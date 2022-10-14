require "selenium-webdriver"
require "byebug"
require_relative  "../driver/driver_variable.rb"

Selenium::WebDriver::Chrome::Service.driver_path = DriverVariable::CHROME_DRIVER
driver = Selenium::WebDriver.for :chrome

begin
  driver.get "https://go.chatwork.com/"

  driver.find_element(css: "input#input-mail").send_keys "vanvtt"
  sleep(1)

ensure
  driver.quit
end

