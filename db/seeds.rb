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
    { vendorId: 1, vendorName: 'John', title: 'Manicure', rating: 5, comment: 'My nails look amazing!' },
    { vendorId: 2, vendorName: 'Kathy' title: 'Meal Swipes', rating: 4, comment: 'Super nice person' },
    { vendorId: 1, vendorName: 'John' title: 'Tutoring', rating: 5, comment: 'The best tutor I’ve ever had.' },
    { vendorId: 3, vendorName: 'Kathy' title: 'Meal Swipes', rating: 1, comment: 'They ghosted me.' },
    { vendorId: 4, vendorName: 'Hannah' title: 'Furniture', rating: 4, comment: 'Personally delivered to me.' }
]

reviews.each do |review|
    Review.create!(review)
end

puts "Created #{Review.count} reviews!"