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
        comment: 'The best tutor I’ve ever had.',
        reviewer: 'client'
    )

    review2 = Review.create!(
      vendor_id: 1,
      vendor_name: 'John Doe',
      title: 'Manicure',
      rating: 5,
      comment: 'My nails look amazing!',
      reviewer: 'client'
    )

    review3 = Review.create!(
      vendor_id: 2,
      vendor_name: 'Jane Smith',
      title: 'Facial',
      rating: 4,
      comment: 'Relaxing experience.',
      reviewer: 'client'
    )

    vendor_reviews = Review.vendor_reviews(1)

    expect(vendor_reviews).to contain_exactly(review1, review2)
    expect(vendor_reviews).not_to include(review3)
  end

  it "returns blank when client_id does not exist" do
    client_reviews = Review.client_reviews(100)
    expect(client_reviews).to be_empty
  end

  it "returns the right dummy reviews for client_id 1" do
    vendor_reviews = Review.vendor_reviews(1)
    review4 = Review.create!(
        client_id: 1,
        vendor_name: 'Jane Smith',
        title: 'Tutoring',
        rating: 5,
        comment: 'Great student',
        reviewer: 'vendor'
    )

    review5 = Review.create!(
      client_id: 1,
      vendor_name: 'Jane Smith',
      title: 'Manicure',
      rating: 5,
      comment: 'On time',
      reviewer: 'vendor'
    )

    review6 = Review.create!(
      client_id: 2,
      vendor_name: 'John Doe',
      title: 'Facial',
      rating: 4,
      comment: 'Good client',
      reviewer: 'vendor'
    )

    client_reviews = Review.client_reviews(1)

    expect(client_reviews).to contain_exactly(review4, review5)
    expect(client_reviews).not_to include(review6)
  end
  

end