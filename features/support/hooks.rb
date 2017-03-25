Before do
  # Actions before each step execution
  $browser ||= Selenium::WebDriver.for :firefox
  $browser.manage.window.maximize
end

After do
  # Actions after each scenario execution
  $browser.manage.delete_all_cookies
  
end

at_exit do
  # Actions after all scenarios execution (the end of entire execution)
    $browser.close if $browser
end