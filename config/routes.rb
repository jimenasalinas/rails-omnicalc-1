Rails.application.routes.draw do
  get("/", { :controller => "homepage", :action => "home" })
end

Rails.application.routes.draw do
  get("/square/new", { :controller => "homepage", :action => "home" })
end

Rails.application.routes.draw do
  get("/square/results", { :controller => "square", :action => "square_results" })
end
