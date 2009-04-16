module Ecommerce::Merchants::SecureTrading
  class Settings
    @@currency = 'GBP'
    @@site_reference = ''
    @@certificate = ''
    @@port = 5000
    
    cattr_accessor :currency, :site_reference, :certificate, :port
  end
end