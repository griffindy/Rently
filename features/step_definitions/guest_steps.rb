Given 'I am a guest' do
end

Given 'I am viewing an apartment as a guest' do
  click_link 'Sign out'
  visit 'apartments/1'
end

Then 'I should be prompted to sign up' do
  page.should have_css('form')
end
