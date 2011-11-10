Given /^I visit the homepage$/ do
  visit '/'
end

When /^I click '(.+)'$/ do |element|
  click_link element
end

Then /^I should be in a room$/ do
  current_path.match(/\/rooms\/.+/).should_not == nil
end

Then /^I should see '(.+)'$/ do |text|
  page.should have_content(text)
end
