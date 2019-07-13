require_relative 'Base'
class Paypal_site < Base
  set_url ""
  set_url_matcher /www\.paypal(.*?)\.com/
  #element :login_button, "#ul-btn"
  element :signin, "a", :text => "Log In"
  # By CSS
  #element :userid , "input#email" # By Id
  # element :userid , "input.validateEmpty" # By Class
  #element :userid , "input" # By Tag
  # element :userid , "input[placeholder='Email or mobile number']" # By property
  # element :login_button, "a", :text => "Log In"

  # By Xpath
  #element :userid , :xpath,"//input[@id='email']" # By Id Relative xpath
 # element :userid , :xpath, "/html[1]/body[1]/div[1]/section[1]/div[1]/div[1]/form[1]/div[1]/div[1]/div[2]/div[1]/input[1]" #By Abosolute Xpath
 # element :userid , :xpath, "//input[@class='hasHelp  validateEmpty   ']" # By Class
  # element :userid , :xpath, "//input" #By Tag
  element :userid , :xpath, "//input[@name='login_email']" #By Attribute
  element :next_button , :xpath, "//button[text()='Next']" #By Text
  #element :next_button, "#btnNext"
  element :password, "#password"
  element :login_button, "#btnLogin"

  element :heading, "h2.pulloutHeadline"
  element :note,"p.pulloutPara"

  element :fav_stores_link, "a", :text=> "Shop now with PayPal at your favorite stores."
  element :paypal_devices_ny, "div.paypal-devices-home"

  #Home Page
  element :settings_button, "#header-settings"
  element :add_address_plus_button, "a[name='addAddress']"

  #Dropdown
  element :state_dropdown, "div.selectDropdown"
  elements :state_dropdown_all, "div.selectDropdown select option"

  #Checkbox
  element :mark_primary_chkbox, "label[for='primary']"

  #Radio Button
  element :upgrade_businees_link, "a", :text => "Upgrade to a Business account"
  element :existing_account_radio, "label[for='existing_account']"
  element :new_account_radio, "label[for='new_account']"

end