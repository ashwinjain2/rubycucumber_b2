Given(/^I am on paypal website$/) do
  $Browser.paypal_home_pg.load
  $Browser.paypal_home_pg.signin.click
end

When (/^I enter (.*?) and (.*?)$/)do |user,passwd|
  $Browser.paypal_home_pg.userid.set(user)
  $Browser.paypal_home_pg.next_button.click
  $Browser.paypal_home_pg.password.set(passwd)
  sleep 5

end

And (/^I click the Login button$/) do
  $Browser.paypal_home_pg.login_button.click
  binding.pry
end

And (/^I click the settings icon$/) do
  $Browser.paypal_home_pg.settings_button.click
end

And (/^I click the Add address plus icon$/) do
  $Browser.paypal_home_pg.add_address_plus_button.click
  sleep 5
end

And(/^I select the New Jersey state from the dropdown list$/) do

  $Browser.paypal_home_pg.state_dropdown.select("New Jersey")
sleep 10
end

And(/^I make the address primary by selecting the checkbox$/) do
  $Browser.paypal_home_pg.mark_primary_chkbox.click
  sleep 10
end

And(/^I click the upgrade to business account link$/) do
  $Browser.paypal_home_pg.upgrade_businees_link.click
  sleep 10
end

And(/^I select the existing account radio button$/) do
  $Browser.paypal_home_pg.existing_account_radio.click
  sleep 10
end

Then (/^I validate the heading shows as "(.*?)"$/) do |heading|
binding.pry
  expect($Browser.paypal_home_pg.heading.text).to eql(heading)
end


Then (/^I should validate the link for favorite shops is "(.*?)"$/) do |link|
  expect($Browser.paypal_home_pg.fav_stores_link["href"]).to eql(link)
  expect($Browser.paypal_home_pg.fav_stores_link.text).to eql("Shop now with PayPal at your favorite stores.")
end

Then (/^I should see the imgage of paypal sites accepting in new york$/) do
  expect($Browser.paypal_home_pg.paypal_devices_ny.native.style('background-image')).to eql('url("https://www.paypalobjects.com/digitalassets/c/website/marketing/na/us/home/site_dark_desktop.png")')
#Find the background image by source example
  #expect($Browser.paypal_home_pg.paypal_devices_ny["src"].to eql('url("https://www.paypalobjects.com/digitalassets/c/website/marketing/na/us/home/site_dark_desktop.png")')
end

