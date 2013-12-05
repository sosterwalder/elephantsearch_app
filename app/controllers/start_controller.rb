class StartController < ApplicationController
  http_basic_authenticate_with :name => "admin", :password => "secret"
  def administration
  end
end
