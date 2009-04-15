SECURE_TRADING_OPTIONS = {}

module Ecommerce
  # This exception should be used to handle payment gateway timeouts in the merchant API code.
  class MerchantConnectionError < Exception ; end
  
  # The following exceptions should be caught in the application code.
  class MerchantConfigurationError < Exception ; end
  class MerchantInvalidRequest < Exception ; end
  
  module Cards
    class InvalidCard < Exception ; end
    CARD_TYPES = {
      "Visa"          => "VISA",
      "Mastercard"    => "MasterCard",
      "Maestro"       => "Switch",
      "Solo"          => "Solo",
      "Delta"         => "Delta"
    }
  end
    
  # Use this for objects to work in forms.  include it, then provide an
  # attributes method that returns the object's attribute hash, and a
  # validate array.
  module ActiveRecordBridge
    def self.included(base)
      base.class_eval do
        def self.human_attribute_name(attribute) ; attribute.to_s.titlecase ; end
      end
    end
  
    def errors
      @errors ||= ActiveRecord::Errors.new(self)
    end
  
    def valid?
      errors.clear
      validate
      errors.empty?
    end
  
    private
  
      def method_missing(sym, *args)
        if attributes.has_key? sym
          attributes[sym]
        else
          raise
        end
      end
  end
end