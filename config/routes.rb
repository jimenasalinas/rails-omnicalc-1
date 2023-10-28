Rails.application.routes.draw do
  get("/", { :controller => "homepage", :action => "home" })
end

Rails.application.routes.draw do
  get("/square/new", { :controller => "homepage", :action => "home" })
end

Rails.application.routes.draw do
  get("/square/results", { :controller => "square", :action => "square_results" })
end

Rails.application.routes.draw do
  get("/square_root/new", { :controller => "square_root", :action => "square_root" })
end

Rails.application.routes.draw do
  get("/square_root/results", { :controller => "square_root_results", :action => "square_root_results" })
end

Rails.application.routes.draw do
  get("/payment/new", { :controller => "payment", :action => "calc_pay" })
end

Rails.application.routes.draw do
  get("/payment/results", { :controller => "payment_results", :action => "calc_pay_results" })
end

Rails.application.routes.draw do
  get("/random/new", { :controller => "random", :action => "calc_random" })
end

Rails.application.routes.draw do
  get("/random/results", { :controller => "random_results", :action => "calc_random_results" })
end
