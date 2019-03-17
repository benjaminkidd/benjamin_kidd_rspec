require 'rspec'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'yaml'
require 'rest-client'
require 'json'
require 'nokogiri'


Capybara.register_driver :selenium do |window|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"useAutomationExtension" => false})
  Capybara::Selenium::Driver.new window, browser: :chrome, desired_capabilities: caps
end

RSpec.configure do |config|
  config.before(:each) do
    config.include Capybara::DSL
  end
end