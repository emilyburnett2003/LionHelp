require 'rails_helper'

RSpec.describe Review, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "returns blank when vendor_id does not exist" do
    vendor_reviews = Review.vendor_reviews(100)
    expect(vendor_reviews).to be_empty
  end

  it "returns the right dummy reviews for vendor_id 1" do
    vendor_reviews = Review.vendor_reviews(1)
    review1 = Review.create!(
        vendor_id: 1,
        vendor_name: 'John Doe',
        title: 'Tutoring',
        rating: 5,
        comment: 'The best tutor I’ve ever had.'
    )

    review2 = Review.create!(
      vendor_id: 1,
      vendor_name: 'John Doe',
      title: 'Manicure',
      rating: 5,
      comment: 'My nails look amazing!'
    )

    review3 = Review.create!(
      vendor_id: 2,
      vendor_name: 'Jane Smith',
      title: 'Facial',
      rating: 4,
      comment: 'Relaxing experience.'
    )

    vendor_reviews = Review.vendor_reviews(1)

    expect(vendor_reviews).to contain_exactly(review1, review2)
    expect(vendor_reviews).not_to include(review3)
  end
end