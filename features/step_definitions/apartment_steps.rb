Given /^an apartment exists with address "([^"]+)"$/ do |address|
  visit root_path
  click_link 'Sign up'
  fill_in 'Name', with: 'jim bob'
  fill_in 'Email', with: 'jimbob@google.com'
  fill_in 'Password', with: 'password'
  select 'Landlord', from: 'Role'
  click_button 'Sign up'
  click_link 'Create a new Listing'
  fill_in 'Address', with: address
  fill_in 'City', with: 'Cambridge'
  fill_in 'Zip', with: '02140'
  fill_in 'State', with: 'Massachusetts'
  fill_in 'Rent', with: '1600'
  fill_in 'Bedrooms', with: '2'
  fill_in 'Bathrooms', with: '1'
  fill_in 'Description', with: 'this is a nice apartment'
  click_button 'submit'
end

When 'I click the link to create a new listing' do
  click_link 'Create a new Listing'
end

When /^I fill out the new apartment form for "([^"]+)"$/ do |address|
  fill_in 'Address', with: address
  fill_in 'City', with: 'Cambridge'
  fill_in 'Zip', with: '02140'
  fill_in 'State', with: 'Massachusetts'
  fill_in 'Rent', with: '1600'
  fill_in 'Bedrooms', with: '2'
  fill_in 'Bathrooms', with: '1'
  fill_in 'Description', with: 'this is a nice apartment'
  click_button 'submit'
end

When 'I am viewing an apartment page' do
  visit 'apartments/1'
end
