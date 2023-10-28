class SquareRootController < ApplicationController
  def square_root

    render({ :template => "calc_templates/square_root" })

  end
end
