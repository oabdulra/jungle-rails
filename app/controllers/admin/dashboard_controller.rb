class Admin::DashboardController < ApplicationController
  def show
    
      @product= Product.count(:id)
      @category= Category.count(:id)
    
  end
end
