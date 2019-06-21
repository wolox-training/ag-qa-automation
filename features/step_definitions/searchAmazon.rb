# frozen_string_literal: true

require 'selenium-cucumber'
require 'selenium-webdriver'
require 'rspec'

When 'A user that search {string}' do |value|
  wait_for_element_to_enable(:id, 'twotabsearchtextbox', 10)
  wait_for_element_to_display(:xpath, '//input[@value="Go"]', 10)
  enter_text(:id, value, 'twotabsearchtextbox')
  submit(:xpath, '//input[@value="Go"]')
end

And 'Filter for {string}' do |filter|
  wait_for_element_to_display(:xpath, "(//span[contains(.,'#{filter}')])[3]", 10)
  click(:xpath, "(//span[contains(.,'#{filter}')])[3]")
end

And 'Order by price {string}' do |item_drop|
  wait_for_element_to_display(:id, 's-result-sort-select', 10)
  select_option_from_dropdown(:id, :text, item_drop, 's-result-sort-select')
end

Then 'Check that items are ordered by price' do
  elem = $driver.find_elements(:xpath, "//span[@class='a-color-base'][contains(.,'$')]")
  elem.should eql? elem.sort.reverse
end
