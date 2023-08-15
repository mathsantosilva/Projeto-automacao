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
    config.default_driver = :selenium_chrome_headless
    Capybara.page.driver.browser.manage.window.maximize
    config.run_server = false
    config.default_max_wait_time = 50
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
end