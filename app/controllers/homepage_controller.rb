class HomepageController < ApplicationController
  def home

    render({ :template => "calc_templates/homepage" })

  end
end
