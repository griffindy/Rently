Given 'a landlord exists' do
  visit root_path
  click_link 'Sign up'
  fill_in 'Name', with: 'jim bob'
  fill_in 'Email', with: 'jimbob@google.com'
  fill_in 'Password', with: 'password'
  select 'Landlord', from: 'Type'
  click_button 'Sign up'
end

When 'I click Create a new Listing' do
  click_link 'Create a new Listing'
end

And 'I fill out the form' do
  fill_in 'Address', with: '97 Walden St'
  fill_in 'City', with: 'Cambridge'
  fill_in 'Zip', with: '02140'
  fill_in 'State', with: 'Massachusetts'
  fill_in 'Rent', with: '1600'
  fill_in 'Bedrooms', with: '2'
  fill_in 'Bathrooms', with: '1'
  fill_in 'Description', with: 'this is a nice apartment'
end

And 'I click submit' do
  click_button 'submit'
end

Then 'I see the apartment under my listings' do
  page.should have_content '97 Walden St'
end
