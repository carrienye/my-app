Rails.application.routes.draw do

  get("/home", { :controller => "books", :action => "home_page" })

  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })

end
