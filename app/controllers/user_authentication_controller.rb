class UserAuthenticationController < ApplicationController

  def sign_in_form
    render({ :template => "user_authentication/sign_in.html.erb" })
  end
  
  end
