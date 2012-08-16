Then /^I should see the "([^"]+)" apartment in my listings$/ do |address|
  page.should have_content address
end
