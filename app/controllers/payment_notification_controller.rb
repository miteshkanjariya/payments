class PaymentNotificationController < ApplicationController
    protect_from_forgery except: [:create, :index]

  def create
    # @payment = PaymentNotification.create!(params: params, product_id: params[:invoice], status: params[:payment_status], transaction_id: params[:txn_id] )
    #@payment = PaymentNotification.new(params: params, product_id: 1, status: params[:payment_status], transaction_id: params[:txn_id])
    # render nothing: true
    puts "************PAYPAL-NOTIFICATION*************"
    if params[:payment_status] == 'Completed'
        redirect_to root_url, notice: 'Success!'
      else
        redirect_to root_url, notice: 'Error'
      end

  end

  def index
    puts "************PAYMENT-PROCESS*************"
    if params[:payment_status] == 'Completed'
        redirect_to root_url, notice: 'Success!'
      else
        redirect_to root_url, notice: 'Error'
      end
  end

  def payment_return
    puts "************PAYMENT-RETURN*************"
  end
end
