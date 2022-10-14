require "selenium-webdriver"
require "byebug"
require_relative  "../driver/driver_variable.rb"

Selenium::WebDriver::Firefox::Service.driver_path =  DriverVariable::FIREFOX_DRIVER
driver = Selenium::WebDriver.for :firefox

begin
  # Navigate to URL
  driver.get "https://google.com"

  search = driver.find_element(name: "q")

	driver.action.send_keys(search, "webdriver").perform

  driver.action.send_keys(:tab).perform
  sleep(5)
ensure
  driver.quit
end
