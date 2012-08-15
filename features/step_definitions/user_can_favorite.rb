Given 'an apartment exists' do
  visit root_path
  click_link 'Sign up'
  fill_in 'Name', with: 'jim bob'
  fill_in 'Email', with: 'jimbob@google.com'
  fill_in 'Password', with: 'password'
  select 'Landlord', from: 'Type'
  click_button 'Sign up'
  click_link 'Create a new Listing'
  fill_in 'Address', with: '97 Walden St'
  fill_in 'City', with: 'Cambridge'
  fill_in 'Zip', with: '02140'
  fill_in 'State', with: 'Massachusetts'
  fill_in 'Rent', with: '1600'
  fill_in 'Bedrooms', with: '2'
  fill_in 'Bathrooms', with: '1'
  fill_in 'Description', with: 'this is a nice apartment'
  click_button 'submit'
  click_link 'Sign out'
end

Given 'I am a tenant and am signed in' do
  visit root_path
  click_link 'Sign up'
  fill_in 'Name', with: 'joe bob'
  fill_in 'Email', with: 'joebob@google.com'
  fill_in 'Password', with: 'password'
  select 'Tenant', from: 'Type'
  click_button 'Sign up'
end

And 'I am viewing an apartment page' do
  visit 'apartments/1'
end

When 'I click on the favorite button' do
  click_button 'favorite'
end

Then 'I should be prompted to sign up' do
  page.should have_css('form')
end

Then 'I should see the apartment under my favorites' do
  page.should have_content('97 Walden St')
end
