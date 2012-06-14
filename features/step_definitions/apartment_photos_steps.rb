
Given /^an apartment$/ do
  @apt = FactoryGirl.create(:apartment)
end

When /^I add photos to the apartment$/ do
  @photo = @apt.photos.new
end

Then /^the apartment should have photos$/ do
  @apt.photos.first.should be
end
