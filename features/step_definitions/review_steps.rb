Given(/the following reviews exist/) do |reviews_table|
    reviews_table.hashes.each do |review|
        Review.create review
    end
end

Given('I am on the review home page') do
    visit reviews_path
end

Then('I should see {string} {int} times') do |vendor_name, count|
    expect(page).to have_text(vendor_name, count: count)
end

Given('I am on the show_vendor_review page for {int}') do |vendor_id|
    puts "Visiting path: #{vendor_reviews_path(vendor_id)}"
    visit vendor_reviews_path(vendor_id)
end

Given('I am on the show_client_review page for {int}') do |client_id|
  puts "Visiting path: #{client_reviews_path(client_id)}"
  visit client_reviews_path(client_id)
end


Then(/^I should see comments like: (.*)$/) do |comment_list|
    comment_list.split(', ').each do |comment|
        expect(page).to have_text(comment.strip)
    end
end


Given('the following review exists:') do |table|
  table.hashes.each do |row|
    Review.create!(row)
  end
end

When('I delete the review {string}, {string}, {string}, {string}') do |vendor_name, title, comment, rating|
  review = Review.find_by(
    vendor_name: vendor_name,
    title: title,
    comment: comment,
    rating: rating
  )
  visit reviews_path
  within("#review_#{review.id}") do
    click_link 'Delete'
  end
end


Given("I am on the review page") do
  visit new_review_path
end
