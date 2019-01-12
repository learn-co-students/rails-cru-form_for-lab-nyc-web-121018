class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

# rails g resource Artist name:string bio:text --no-test-framework
# rails g resource Genre name:string --no-test-framework
# rails g resource Song name:string artist_id:integer genre_id:integer --no-test-framework
