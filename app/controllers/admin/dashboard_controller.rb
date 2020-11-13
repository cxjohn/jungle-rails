class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with :name => ENV['USER_NAME'], :password => ENV['PASSWORD']

  def show
    @products = Product.count
    @categories = Category.count
  end
end
# def show 
#   @unique_inventory = Product.count() 
#   @category_count = Category.count
# end
# end