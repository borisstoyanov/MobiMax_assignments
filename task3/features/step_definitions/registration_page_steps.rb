require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require './page_objects/page_objects'

Before do
  @site = Site.new(Watir::Browser.new)
end

After do
  @site.close
end

Given(/^the user is at the registration page$/) do
  @registration = @site.registration_page.goTo
end

And(/^he enters lastname:"([^"]*)"$/) do |arg|
  @registration.enter_lastname(arg)
end

And(/^he enters firstname:"([^"]*)"$/) do |arg|
  @registration.enter_firstname(arg)
end

And(/^he enters ZIP:"([^"]*)"$/) do |arg|
  @registration.enter_zip(arg)

end

And(/^he enters username:"([^"]*)"$/) do |arg|
  @registration.enter_username(arg)

end

And(/^he selects school:"([^"]*)"$/) do |arg|
  @registration.select_school(arg)

end

And(/^he enters password:"([^"]*)"$/) do |arg|
  @registration.enter_password(arg)

end

And(/^he clicks "([^"]*)"$/) do |arg|
  @registration.clicks_on(arg)
end

Then(/^he should be displayed with the mobimax welcome page$/) do
  @welcome_page = @site.welcome_page.isAt
end

Given(/^the teacher is logged in the application$/) do
  @login = @site.login_page.goTo
  @welcome_page = @login.login_as_teacher
end

And(/^he goes to settings$/) do
  @welcome_page = @welcome_page.goto_settings
end

Then(/^the first name should be:"([^"]*)"$/) do |arg|
  @settings = @site.settings_page
  @settings.check_account(arg)
end

And(/^the last name should be:"([^"]*)"$/) do |arg|
  @settings.check_account(arg)
end


