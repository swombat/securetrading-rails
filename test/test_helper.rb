require 'test/unit'
require File.join(File.dirname(__FILE__), '../init')

Ecommerce::Merchants::SecureTrading::Settings.site_reference = 'helicoid1234'
Ecommerce::Merchants::SecureTrading::Settings.certificate = <<TEXT

-----BEGIN CERTIFICATE----- 
MIIGUTCCBg+gAwIBAgICAQMwCwYHKoZIzjgEAwUAMIG/MQswCQYDVQQGEwJVSzEP 
MA0GA1UECBMGTG9uZG9uMQswCQYDVQQHEwJTVDEWMBQGA1UEChMNU2VjdXJlVHJh 
SPEeso/HNlkY8DXrEXixAhRcJrEC3JnDXLRDZc32MciHvISP9Q== 
-----END CERTIFICATE----- 
-----BEGIN RSA PRIVATE KEY----- 
TWhG9Qn9kJ+h15rJBvbQtNvFMBuLlIXEVOxZboteE+2lW7iYz5gF7HWUPgjM+RTM 
j6D5al6AuWU0/uqL6VVe6POgBorSFeWd18RnQLfAinVkEu8UkWQBS1Y4j5ICFGRc 
YaJAnR5AJ4xXUK3CHVbLEBkW 
-----END RSA PRIVATE KEY----- 
TEXT
