class Review < ActiveRecord::Base
    def self.vendor_reviews(vendor_id)
        Review.where(vendor_id: vendor_id)
    end


    validates :rating, numericality: { 
    greater_than_or_equal_to: 0, 
    less_than_or_equal_to: 10,
    message: "must be between 0 and 10"
}

end
