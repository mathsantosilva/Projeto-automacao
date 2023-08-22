require "allure-cucumber"
require "appium_lib"
require "fileutils"
require "capybara"
require "capybara/cucumber"
require "cucumber"
# require "report_builder"
require "capybara/rspec"
# require "gherkin"
require 'webdrivers'

# Limpa os logs e os screenshots
FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))

Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new
    chrome_options.add_argument('--log-level=3')
    chrome_options.add_argument('--disable-gpu')
    chrome_options.add_argument('--excludeSwitches')
    chrome_options.add_argument('--silent') # Isso deve ajudar a suprimir as mensagens
    #chrome_options.add_argument('--start-maximized')
    chrome_options.add_argument("--ignore-certificate-errors")
    chrome_options.add_argument("--disable-extensions")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--disable-dev-shm-usage")
    chrome_options.add_argument("--headless=new")
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options, clear_session_storage: true, clear_local_storage: true)
  end


Capybara.configure do |config|
    Webdrivers.install_dir = '\GoogleDrive\atual'
    config.default_driver = :selenium_chrome_headless    
    config.run_server = false
    config.default_max_wait_time = 50
end
  

  