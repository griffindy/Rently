Given 'I am signed in as a tenant' do
  click_link 'Sign out'
  visit root_path
  click_link 'Sign up'
  fill_in 'Name', with: 'joe bob'
  fill_in 'Email', with: 'joebob@google.com'
  fill_in 'Password', with: 'password'
  select 'Tenant', from: 'Role'
  click_button 'Sign up'
end
