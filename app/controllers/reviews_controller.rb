class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    # the form shows the type being reviewed, but reviewer column stores who is writing
    if params[:review][:reviewer] == 'vendor'
      params[:review][:reviewer] = 'client'  # client is writing review of vendor
    elsif params[:review][:reviewer] == 'client'
      params[:review][:reviewer] = 'vendor'  # vendor is writing review of client
    end

    @review = Review.new(review_params)
    if @review.save
      flash[:notice] = "review posted successfully!"
      redirect_to reviews_path
    else
      render :new
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to reviews_path, notice: 'Review deleted.'
  end

  def review_params
    params.require(:review).permit(:vendor_name, :client_name, :title, :rating, :comment, :reviewer)
  end

  def show_vendor_reviews
    vendor_id = params[:vendor_id]
    @vendor_reviews = Review.vendor_reviews(vendor_id)
    redirect_to reviews_path, notice: "'#{vendor_id}' has no reviews info" if @vendor_reviews.blank?
  end

  def show_client_reviews
    client_id = params[:client_id]
    @client_reviews = Review.client_reviews(client_id)
    redirect_to reviews_path, notice: "'#{client_id}' has no reviews info" if @client_reviews.blank?
  end
end
