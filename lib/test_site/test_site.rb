$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/pages")
require 'paypal_site'
class TestSite
  def paypal_home_pg
    Paypal_site.new
  end

  def add_creditcard_pg
    AddCredit_Card.new
  end
end