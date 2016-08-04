class CreatePaymentNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_notifications do |t|

      t.timestamps
    end
  end
end
