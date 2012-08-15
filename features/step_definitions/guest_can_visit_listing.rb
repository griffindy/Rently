And 'I am a guest' do
  visit root_path
end

When 'I visit an apartment listing' do
  visit 'apartments/1'
end

Then 'It should not blow up' do
  page.should have_content '97 Walden St'
end
