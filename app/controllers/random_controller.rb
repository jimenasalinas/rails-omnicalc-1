class RandomController < ApplicationController
  def calc_random

    render({ :template => "calc_templates/random" })

  end
end
