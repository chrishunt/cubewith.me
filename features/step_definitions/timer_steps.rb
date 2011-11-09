Given /^I am on the timer page$/ do
  visit timer_path
end

When /^I press the '(\w+)' button$/ do |selector|
  click_link selector
end

When /^I wait (\d+)\.(\d+) seconds$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a non\-zero time on the timer$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should not see the 'Start' button$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the 'Stop' button$/ do
  pending # express the regexp above with the code you wish you had
end
