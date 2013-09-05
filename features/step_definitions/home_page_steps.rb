require 'mobylette/helmet'
include Mobylette::Helmet

Given(/^I am using a desktop browser$/) do
#  reset_test_request_agent
 # session = Capybara::Session.new(:webkit, mobile_user_test)

 # puts :ignore_mobile.class.to_s
  set_session_override(:force_mobile)
  get :home

end

When(/^I visit the home page$/) do
  get 'static_pages#home'
end

Then(/^I should see the desktop home page$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am using a mobile browser$/) do
  set_session_override(:force_mobile)
end

When(/^I visit the home page version "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a page with a menu in the footer$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a page with a menu in the sidebar\.$/) do
  pending # express the regexp above with the code you wish you had
end
