Given 'a landlord exists' do
  visit root_path
  click_link 'Sign up'
  fill_in 'Name', with: 'jim bob'
  fill_in 'Email', with: 'jimbob@google.com'
  fill_in 'Password', with: 'password'
  select 'Landlord', from: 'Role'
  click_button 'Sign up'
end

Then /^I should see the "([^"]+)" apartment in my listings$/ do |address|
  page.should have_content address
end
