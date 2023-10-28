class PaymentController < ApplicationController
  def calc_pay

    render({ :template => "calc_templates/payment" })

  end
end
