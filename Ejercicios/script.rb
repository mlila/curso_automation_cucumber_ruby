require 'selenium-webdriver'

@browser = Selenium::WebDriver.for :firefox

@browser.get "http://zonados.testingbairesdemo.com/automation/wp-login.php"

@browser.find_element(:id, "user_login").send_keys "alumnocurso"
@browser.find_element(:id, "user_pass").send_keys "pass1234"
@browser.find_element(:id, "wp-submit").click
escritorio=@browser.find_element(:class, "wrap").text.include?"Escritorio"

puts escritorio