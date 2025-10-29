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
    visit vendor_reviews_path(vendor_id)
end

Then(/^I should see comments like: (.*)$/) do |comment_list|
    comment_list.split(', ').each do |comment|
        expect(page).to have_text(comment.strip)
    end
end