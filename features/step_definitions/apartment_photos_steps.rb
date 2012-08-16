When /^I fill out the form and upload a photo for "([^"]+)"$/ do |address|
  fill_in 'Address', with: address
  fill_in 'City', with: 'Cambridge'
  fill_in 'Zip', with: '02140'
  fill_in 'State', with: 'Massachusetts'
  fill_in 'Rent', with: '1600'
  fill_in 'Bedrooms', with: '2'
  fill_in 'Bathrooms', with: '1'
  fill_in 'Description', with: 'this is a nice apartment'
  attach_file('Photo', File.join(Rails.root, 'features', 'support', 'house.jpg'))
  click_button 'submit'
end

Then /^the apartment with address "([^"]+)" should have a photo$/ do |address|
  click_link address
  page.should have_css('img')
end
