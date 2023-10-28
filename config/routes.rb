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
