class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
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