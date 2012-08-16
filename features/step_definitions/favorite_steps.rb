When 'I click on the favorite button' do
  click_button 'favorite'
end

Then /^I should see the apartment with address "([^"]+)" under my favorites$/ do |address|
  page.should have_content(address)
end
