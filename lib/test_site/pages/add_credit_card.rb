require_relative 'Base'
class AddCredit_Card < Base
  set_url ""
  set_url_matcher /www\.paypal(.*?)\.com/
  element :card_number, "#card"
end