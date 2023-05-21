class BooksController < ApplicationController

def home_page
  render({ :template => "books/index.html.erb" })  
end

end
