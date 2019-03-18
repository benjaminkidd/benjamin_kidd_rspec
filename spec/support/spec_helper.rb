require 'rspec'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'yaml'
require 'rest-client'
require 'json'
require 'nokogiri'
require 'bundler/setup'
require 'require_all'

require_rel 'login'

RSpec.configure do |config|
  config.include Capybara::DSL
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium_chrome
end

Capybara.register_driver :selenium do |window|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"useAutomationExtension" => false})
  Capybara::Selenium::Driver.new window, browser: :chrome, desired_capabilities: caps
end

