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


Capybara.configure do |config|
    Webdrivers.install_dir = '\GoogleDrive\atual'
    config.default_driver = :selenium_chrome
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('start-maximized')
    options.add_argument('--log-level=0')
    options.add_argument('--disable-hang-monitor')
    options.add_argument('--ignore-certificate-errors')
    options.add_argument('--disable-usb-keyboard-detect')
    options.add_argument('--cros-disks-fake')
    options.add_argument('--allow-os-install')
    config.run_server = false
    config.default_max_wait_time = 35
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
end