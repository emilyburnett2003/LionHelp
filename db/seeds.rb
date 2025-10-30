# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the db with db:setup).

# --- Create Columbia Student Services ---
services = [
  { title: 'Meal Swipes', poster: 'Kathy Lee', description: 'Selling meal swipes! Can meet at Lerner or JJ’s.', price: 9.00 },
  { title: 'Tutoring – COMS W1004', poster: 'John Doe', description: 'One-hour tutoring sessions for Java/Python intro CS. Experienced TA.', price: 25.00 },
  { title: 'Dorm Cleaning', poster: 'Janine Abbott', description: 'Will deep-clean your Carman or EC suite.', price: 40.00 },
  { title: 'Furniture Pickup', poster: 'Hannah Lasso', description: 'Selling gently used IKEA desk and chair. Can deliver anywhere on campus.', price: 60.00 },
  { title: 'Print Station Helper', poster: 'Sam Patel', description: 'Trouble printing in Butler or Mudd? I’ll meet you and help debug it.', price: 5.00 },
  { title: 'Resume Review & Interview Prep', poster: 'Emily Chen', description: 'Peer review of CS and engineering resumes. Includes mock interviews.', price: 30.00 },
  { title: 'Bike Rentals Around Campus', poster: 'Lina Morales', description: 'Rent my foldable bike for quick trips around Morningside Heights.', price: 15.00 },
  { title: 'Laundry Folding Service', poster: 'Maya Brooks', description: 'I’ll fold and organize your washed clothes for you. Pickup from John Jay.', price: 12.00 },
  { title: 'Headshots for LinkedIn', poster: 'Chris Ramos', description: 'Quick professional headshots taken on Low Steps. DSLR + retouching included.', price: 25.00 }
]

services.each do |service|
  Service.create!(service)
end

puts "Created #{Service.count} services!"

# --- Create Reviews ---
reviews = [
    { vendor_id: 1, vendor_name: 'John Doe', title: 'Manicure', rating: 5, comment: 'My nails look amazing!' },
    { vendor_id: 2, vendor_name: 'Kathy Lee', title: 'Meal Swipes', rating: 4, comment: 'Super nice person' },
    { vendor_id: 1, vendor_name: 'John Doe', title: 'Tutoring', rating: 5, comment: 'The best tutor I have ever had.' },
    { vendor_id: 2, vendor_name: 'Kathy Lee', title: 'Meal Swipes', rating: 1, comment: 'They ghosted me.' },
    { vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 4, comment: 'Personally delivered to me.' },
    { vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 3, comment: 'My chair had a scratch on the back.' },
    { vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 5, comment: 'Was really friendly.' },
    { vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 5, comment: 'Sold at a really good price' },

    { vendor_id: 4, vendor_name: 'Barbara Reddington', title: 'Manicure', rating: 1, comment: 'The nail design was not like the picture I showed.' },
    { vendor_id: 4, vendor_name: 'Barbara Reddington', title: 'Manicure', rating: 2, comment: 'They were late to the appointment.' },
    { vendor_id: 4, vendor_name: 'Barbara Reddington', title: 'Manicure', rating: 1, comment: 'They were so rude to me.' },

    { vendor_id: 5, vendor_name: 'Janine Abbott', title: 'Dorm Cleaning', rating: 5, comment: 'My room was super clean when I got back.' },
    { vendor_id: 5, vendor_name: 'Janine Abbott', title: 'Dorm Cleaning', rating: 5, comment: 'She left behind a scented candle that smelled really good.' },
    { vendor_id: 5, vendor_name: 'Janine Abbott', title: 'Tutoring', rating: 4, comment: 'She was super quick with her services.' }
]

reviews.each do |review|
    Review.create!(review)
end

puts "Created #{Review.count} reviews!"