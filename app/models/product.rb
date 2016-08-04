class Product < ApplicationRecord
  # This defines the paypal url for a given product sale
    def paypal_url(return_url, notify_url, cancel_return)
    values = {
    :business => "kapitaliz@gmail.com",
    :cmd => '_xclick',
    :upload => 1,
    :return => return_url,
    :rm => 2,
    :invoice => SecureRandom.uuid,
    :notify_url => notify_url,
    :cancel_return => cancel_return
    }
    values.merge!({
    "amount" => unit_price,
    "item_name" => name,
    "item_number" => id,
    "quantity" => '1'
    })
         # For test transactions use this URL
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
    end

has_many :payment_notifications
end
