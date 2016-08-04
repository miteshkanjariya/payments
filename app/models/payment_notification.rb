class PaymentNotification < ActiveRecord::Base
  belongs_to :product
  serialize :params
  after_create :success_message

  private

  def success_message
    if status == "Completed"
      puts 'Completed'
    else
      puts 'error'
    end
  end
end
