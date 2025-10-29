# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the db with db:setup).

# --- Create Services ---
# services = [
#     { name: 'Facial Treatment', description: 'Hydrating and cleansing facial to refresh skin.', price: 75.0 },
#     { name: 'Deep Tissue Massage', description: 'Relieves chronic muscle tension and stress.', price: 120.0 },
#     { name: 'Aromatherapy Massage', description: 'Massage combined with essential oils for relaxation.', price: 90.0 },
#     { name: 'Hair Styling', description: 'Professional hair styling and treatment.', price: 60.0 }
# ]

# services.each do |service|
#   Service.create!(service)
# end

# puts "Created #{Service.count} services!"

# --- Create Reviews ---
reviews = [
    { vendor_id: 1, vendor_name: 'John Doe', title: 'Manicure', rating: 5, comment: 'My nails look amazing!' },
    { vendor_id: 2, vendor_name: 'Kathy Lee', title: 'Meal Swipes', rating: 4, comment: 'Super nice person' },
    { vendor_id: 1, vendor_name: 'John Doe', title: 'Tutoring', rating: 5, comment: 'The best tutor I’ve ever had.' },
    { vendor_id: 2, vendor_name: 'Kathy Lee', title: 'Meal Swipes', rating: 1, comment: 'They ghosted me.' },
    { vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 4, comment: 'Personally delivered to me.' }
    { vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 3, comment: 'My chair had a scratch on the back.' },
    { vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 5, comment: 'Was really friendly.' },
    { vendor_id: 3, vendor_name: 'Hannah Lasso', title: 'Furniture', rating: 5, comment: 'Sold at a really good price' },

    { vendor_id: 4, vendor_name: 'Barbara Reddington', title: 'Manicure', rating: 1, comment: 'The nail design was not like the picture I showed.' },
    { vendor_id: 4, vendor_name: 'Barbara Reddington', title: 'Manicure', rating: 2, comment: 'They were late to the appointment.' },
    { vendor_id: 4, vendor_name: 'Barbara Reddington', title: 'Manicure', rating: 1, comment: 'They were so rude to me.' }

    { vendor_id: 5, vendor_name: 'Janine Abbott', title: 'Dorm Cleaning', rating: 5, comment: 'My room was super clean when I got back.' },
    { vendor_id: 5, vendor_name: 'Janine Abbott', title: 'Dorm Cleaning', rating: 5, comment: 'She left behind a scented candle that smelled really good.' },
    { vendor_id: 5, vendor_name: 'Janine Abbott', title: 'Tutoring', rating: 4, comment: 'She was super quick with her services.' }
]

reviews.each do |review|
    Review.create!(review)
end

puts "Created #{Review.count} reviews!"