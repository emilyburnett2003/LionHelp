class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
    end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to reviews_path, notice: 'Review deleted.'
  end



    def create
        @review = Review.new(review_params)
        if @review.save
          flash[:notice] = "review posted successfully!"
          redirect_to reviews_path(@review)   # go to the show page instead of index
        else
          render :new
        end
      end


    def review_params
      params.require(:review).permit(:vendor_name,:comment, :rating,:title)
    end

    def show_vendor_reviews
        vendor_id = params[:vendor_id]
        @vendor_reviews = Review.vendor_reviews(vendor_id)
        if @vendor_reviews.blank?
            flash[:notice] = "'#{vendor_id}' has no reviews info"
            redirect_to reviews_path
        end
    end

    
end


