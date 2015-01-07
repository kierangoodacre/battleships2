require 'sinatra/base'

Given(/^I am on the homepage$/) do
	visit '/'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^I am on newgame page$/) do
 	visit '/newgame'
end

Given(/^I enter my name$/) do
  fill_in('name', with: 'name')
end

Given(/^click on submit$/) do
  click_on("Submit")
end

Given(/^I am on the game page$/) do
 visit '/game'
end

Given(/^I click Fire$/) do
 click_on("Fire")
end

Given(/^I am on the miss page$/) do
  visit'/miss'
end

Then(/^I should see a grid$/) do
  page.has_selector?('table tr')
end

Then(/^I enter a coordinate$/) do
  fill_in('coord', with: 'coord')
end

Given(/^I enter a coordinate "(.*?)"$/) do |arg1|
  fill_in('coord', with: 'coord')
end


Then(/^click on Fire$/) do
  pending # express the regexp above with the code you wish you had
end




