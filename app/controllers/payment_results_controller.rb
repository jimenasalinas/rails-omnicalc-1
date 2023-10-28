class PaymentResultsController < ApplicationController
  def calc_pay_results
    @apr = params.fetch("users_apr").to_f

    @years = params.fetch("users_years").to_i
  
    @principal = params.fetch("users_principal").to_f
  
    monthly_interest_rate = (@apr / 12) / 100
    total_payments = @years * 12
  
    @payment = (monthly_interest_rate * @principal) / (1 - (1 + monthly_interest_rate)**(-total_payments))
  
    @apr_formatted = sprintf('%.4f%%', @apr)
    @years_formatted = @years
    @principal_formatted = format("$%.2f", @principal)
    @payment_formatted = format("$%.2f", @payment)
  
    @principal_formatted = @principal_formatted.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    @payment_formatted = @payment_formatted.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    
    render({ :template => "calc_templates/payment_results" })

  end
end
