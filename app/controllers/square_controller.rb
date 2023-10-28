class SquareController < ApplicationController
  def square_results
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 2

    render({ :template => "calc_templates/square_results" })

  end
end
