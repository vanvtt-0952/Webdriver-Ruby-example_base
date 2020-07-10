class BaseDriver
  $ROOT_PATH = File.expand_path("../", __dir__).freeze
  CHROME_DRIVER = "#{$ROOT_PATH}/driver/chromedriver"
  FIREFOX_DRIVER = "#{$ROOT_PATH}/driver/geckodriver"

  BROWSER = :firefox
end
