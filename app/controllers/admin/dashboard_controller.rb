class Admin::DashboardController < ApplicationController
  before_filter :authenticate

  def show
    @total1 = Product.count  
    @total2 = Category.count

  end

  def authenticate 
    authenticate_or_request_with_http_basic do |username, password| 
      username == "Jungle" && password == "book"
    end
  end 
end
