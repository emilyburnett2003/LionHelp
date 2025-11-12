# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the db with db:setup).

# --- Create User Accounts ---
accounts = [
    { user_id: 1, name: 'John Doe', email: 'john@gmail.com' , password: 'password' },
    { user_id: 2, name: 'Kathy Lee', email: 'kathy@gmail.com' , password: 'password' },
    { user_id: 3, name: 'Hannah Lasso', email: 'hannah@gmail.com' , password: 'password' },
    { user_id: 4, name: 'Barbara Reddington', email: 'barbara@gmail.com' , password: 'password' },
    { user_id: 5, name: 'Janine Abbott', email: 'janine@gmail.com' , password: 'password' },
    { user_id: 6, name: 'Sam Patel', email: 'sam@gmail.com' , password: 'password' },
    { user_id: 7, name: 'Emily Chen', email: 'emily@gmail.com' , password: 'password' },
    { user_id: 8, name: 'Lina Morales', email: 'lina@gmail.com' , password: 'password' },
    { user_id: 9, name: 'Maya Brooks', email: 'maya@gmail.com' , password: 'password' },
    { user_id: 10, name: 'Chris Ramos', email: 'chris@gmail.com' , password: 'password' }
]
UserAccount.delete_all
accounts.each do |account|
  UserAccount.create!(account)
end

puts "Created #{UserAccount.count} accounts!"

# --- Create Columbia Student Services ---
services = [
  { vendor_id: 2, title: 'Meal Swipes', poster: 'Kathy Lee', description: 'Selling meal swipes! Can meet at Lerner or JJ’s.', price: 9.00 },
  { vendor_id: 1, title: 'Tutoring – COMS W1004', poster: 'John Doe', description: 'One-hour tutoring sessions for Java/Python intro CS. Experienced TA.', price: 25.00 },
  { vendor_id: 5, title: 'Dorm Cleaning', poster: 'Janine Abbott', description: 'Will deep-clean your Carman or EC suite.', price: 40.00 },
  { vendor_id: 3, title: 'Furniture Pickup', poster: 'Hannah Lasso', description: 'Selling gently used IKEA desk and chair. Can deliver anywhere on campus.', price: 60.00 },
  { vendor_id: 6, title: 'Print Station Helper', poster: 'Sam Patel', description: 'Trouble printing in Butler or Mudd? I’ll meet you and help debug it.', price: 5.00 },
  { vendor_id: 7, title: 'Resume Review & Interview Prep', poster: 'Emily Chen', description: 'Peer review of CS and engineering resumes. Includes mock interviews.', price: 30.00 },
  { vendor_id: 8, title: 'Bike Rentals Around Campus', poster: 'Lina Morales', description: 'Rent my foldable bike for quick trips around Morningside Heights.', price: 15.00 },
  { vendor_id: 9, title: 'Laundry Folding Service', poster: 'Maya Brooks', description: 'I’ll fold and organize your washed clothes for you. Pickup from John Jay.', price: 12.00 },
  { vendor_id: 10, title: 'Headshots for LinkedIn', poster: 'Chris Ramos', description: 'Quick professional headshots taken on Low Steps. DSLR + retouching included.', price: 25.00 }
]

Service.delete_all
services.each do |service|
  Service.create!(service)
end

puts "Created #{Service.count} services!"

# --- Create Reviews from client to vendor ---
reviews = [
    { client_id: 2, vendor_id: 1, vendor_name: 'John Doe', title: 'Manicure', rating: 5, comment: 'My nails look amazing!', reviewer: "client", client_name: "Kathy Lee" },
    { client_id: 1, vendor_id: 2, vendor_name: 'Kathy Lee', title: 'Meal Swipes', rating: 4, comment: 'Super nice person', reviewer: "vendor", client_name: "John Doe" },
    { client_id: 4, vendor_id: 1, vendor_name: 'John Doe', title: 'Tutoring', rating: 5, comment: 'The best tutor I have ever had.', reviewer: "client", client_name: "Barbara Reddington" },
    { client_id: 3, vendor_id: 2, vendor_name: 'Kathy Lee', title: 'Meal Swipes', rating: 1, comment: 'They ghosted me.', reviewer: "vendor", client_name: "Hannah Lasso" },
    { client_id: 1, vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 4, comment: 'Personally delivered to me.', reviewer: "client", client_name: "John Doe" },
    { client_id: 2, vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 3, comment: 'My chair had a scratch on the back.', reviewer: "client", client_name: "Kathy Lee" },
    { client_id: 5, vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 5, comment: 'Was really friendly.', reviewer: "client", client_name: "Janine Abbott" },
    { client_id: 4, vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 5, comment: 'Sold at a really good price', reviewer: "client", client_name: "Barbara Reddington" },
    

    { client_id: 1, vendor_id: 4, vendor_name: 'Barbara Reddington', title: 'Manicure', rating: 1, comment: 'The nail design was not like the picture I showed.', reviewer: "client", client_name: "John Doe" },
    { client_id: 4, vendor_id: 1, vendor_name: 'John Doe', title: 'Haircut', rating: 2, comment: 'They were late to the appointment.', reviewer: "vendor", client_name: "Barbara Reddington" },
    { client_id: 3, vendor_id: 4, vendor_name: 'Barbara Reddington', title: 'Manicure', rating: 1, comment: 'They were so rude to me.', reviewer: "client", client_name: "Hannah Lasso" },

    { client_id: 1, vendor_id: 5, vendor_name: 'Janine Abbott', title: 'Dorm Cleaning', rating: 5, comment: 'My room was super clean when I got back.', reviewer: "client", client_name: "John Doe" },
    { client_id: 4, vendor_id: 5, vendor_name: 'Janine Abbott', title: 'Dorm Cleaning', rating: 5, comment: 'She left behind a scented candle that smelled really good.', reviewer: "client", client_name: "Barbara Reddington" },
    { client_id: 3, vendor_id: 5, vendor_name: 'Janine Abbott', title: 'Tutoring', rating: 4, comment: 'She was super quick with her services.', reviewer: "client", client_name: "Hannah Lasso" }
]

Review.delete_all
reviews.each do |review|
    Review.create!(review)
end

puts "Created #{Review.count} reviews!"

