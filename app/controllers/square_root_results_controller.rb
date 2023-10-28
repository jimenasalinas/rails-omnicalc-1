class SquareRootResultsController < ApplicationController
  def square_root_results
    @the_num_r = params.fetch("users_root_number").to_f

    @the_result_r = @the_num_r**0.5

    render({ :template => "calc_templates/square_root_results" })

  end
end
