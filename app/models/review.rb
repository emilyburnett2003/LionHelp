class Review < ActiveRecord::Base
    def self.vendor_reviews(vendor_id)
        Review.where(vendor_id: vendor_id)
    end
end
