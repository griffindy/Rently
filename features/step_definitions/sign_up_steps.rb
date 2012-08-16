Given 'I am on the home page' do
  visit root_path
end

When 'I sign up as a landlord' do
  visit root_path
  click_link 'Sign up'
  fill_in 'Name', with: 'jim bob'
  fill_in 'Email', with: 'jimbob@google.com'
  fill_in 'Password', with: 'password'
  select 'Landlord', from: 'Role'
  click_button 'Sign up'
end

When 'I sign up as a tenant' do
  click_link 'Sign up'
  fill_in 'Name', with: 'joe bob'
  fill_in 'Email', with: 'joebob@google.com'
  fill_in 'Password', with: 'password'
  select 'Tenant', from: 'Role'
  click_button 'Sign up'
end

Then 'I should see the landlord dashboard' do
  page.should have_content('Create a new Listing')
end

Then 'I should see the tenant dashboard' do
  page.should have_content('Your Favorites')
end

Then 'I should not see the sign up link' do
  page.should have_no_content 'Sign up'
end
