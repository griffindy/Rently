Given 'I am a guest' do
end

Given /^I am viewing an apartment with address "([^"]+)" as a guest$/ do |address|
  click_link 'Sign out'
  visit 'apartments'
  click_link address
end

Then 'I should be prompted to sign up' do
  page.should have_css('form')
end
