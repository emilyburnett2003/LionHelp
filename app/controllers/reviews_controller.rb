class ReviewsController < ApplicationController
def index
  @reviews = Review.all

  if params[:filter] == "about_me_vendor" && session[:user_name].present?
    @reviews = @reviews.where(reviewer: "client", vendor_name: session[:user_name])

  elsif params[:filter] == "written_by_me" && session[:user_name].present?
    @reviews = @reviews.where(client_name: session[:user_name]).or(
      @reviews.where(vendor_name: session[:user_name], reviewer: "vendor")
    )

  elsif params[:filter] == "vendor"
    @reviews = @reviews.where(reviewer: "vendor")

  elsif params[:filter] == "client"
    @reviews = @reviews.where(reviewer: "client")
  end
end


  def new
    @review = Review.new
  end

def create
  if params[:review][:reviewer] == 'vendor'
    params[:review][:vendor_name] = params[:review][:client_name]
    params[:review][:client_name] = session[:user_name]  
    params[:review][:reviewer] = 'client'
  elsif params[:review][:reviewer] == 'client'
    # vendor is writing review of client
    params[:review][:vendor_name] = session[:user_name]  
    params[:review][:reviewer] = 'vendor'
  end

  @review = Review.new(review_params)

  if @review.rating.to_i > 10
    flash[:notice] = "Rating is too high."
    redirect_to new_review_path and return
  elsif @review.rating.to_i < 0
    flash[:notice] = "Rating is too low."
    redirect_to new_review_path and return
  end

  if @review.save
    flash[:notice] = "Review posted successfully!"
    redirect_to reviews_path
  else
    flash[:notice] = "Error saving review: " + @review.errors.full_messages.join(", ")
    redirect_to new_review_path
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
