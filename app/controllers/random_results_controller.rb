class RandomResultsController < ApplicationController
  def calc_random_results

    @min = params.fetch("users_min").to_f

    @max = params.fetch("users_max").to_f
  
    @random_number = @min + rand * (@max - @min)
    
    render({ :template => "calc_templates/random_results" })

  end
end
