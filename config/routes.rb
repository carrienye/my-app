Rails.application.routes.draw do

  # Routes for the Favorite resource:

  get("/", { :controller => "books", :action => "index" })

  # CREATE
  post("/insert_favorite", { :controller => "favorites", :action => "create" })
          
  # READ
  get("/favorites", { :controller => "favorites", :action => "index" })
  
  get("/favorites/:path_id", { :controller => "favorites", :action => "show" })
  
  # UPDATE
  
  post("/modify_favorite/:path_id", { :controller => "favorites", :action => "update" })
  
  # DELETE
  get("/delete_favorite/:path_id", { :controller => "favorites", :action => "destroy" })

  #------------------------------

  # Routes for the Genre resource:

  # CREATE
  post("/insert_genre", { :controller => "genres", :action => "create" })
          
  # READ
  get("/genres", { :controller => "genres", :action => "index" })
  
  get("/genres/:path_id", { :controller => "genres", :action => "show" })
  
  # UPDATE
  
  post("/modify_genre/:path_id", { :controller => "genres", :action => "update" })
  
  # DELETE
  get("/delete_genre/:path_id", { :controller => "genres", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # Routes for the Author resource:

  # CREATE
  post("/insert_author", { :controller => "authors", :action => "create" })
          
  # READ
  get("/authors", { :controller => "authors", :action => "index" })
  
  get("/authors/:path_id", { :controller => "authors", :action => "show" })
  
  # UPDATE
  
  post("/modify_author/:path_id", { :controller => "authors", :action => "update" })
  
  # DELETE
  get("/delete_author/:path_id", { :controller => "authors", :action => "destroy" })

  #------------------------------

  # Routes for the Book resource:

  # CREATE
  post("/insert_book", { :controller => "books", :action => "create" })
          
  # READ
  get("/books", { :controller => "books", :action => "index" })
  
  get("/books/:path_id", { :controller => "books", :action => "show" })
  
  # UPDATE
  
  post("/modify_book/:path_id", { :controller => "books", :action => "update" })
  
  # DELETE
  get("/delete_book/:path_id", { :controller => "books", :action => "destroy" })

  #------------------------------

  get("/home", { :controller => "books", :action => "index" })

  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })

end
