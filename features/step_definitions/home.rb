# frozen_string_literal: true

require 'selenium-cucumber'
require 'selenium-webdriver'
require 'rspec'

When 'when I search {string}' do |value|
  wait_for_element_to_display(:id, 'twotabsearchtextbox', 10)
  wait_for_element_to_display(:xpath, '//input[@value="Go"]', 10)
  enter_text(:id, value, 'twotabsearchtextbox')
  click(:xpath, '//input[@value="Go"]')
  sleep 3
end
