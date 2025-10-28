require 'rails_helper'

RSpec.describe Service, type: :model do
  it 'is valid with all attributes' do
    service = Service.new(
      title: "Laundry Help",
      description: "Need help folding laundry",
      price: 15.00,
      poster: "Emily"
    )
    expect(service).to be_valid
  end

  it 'is invalid without a title' do
    service = Service.new(description: "desc", price: 10, poster: "Emily")
    expect(service).not_to be_valid
  end
end
