class StoreController < ApplicationController
  
  def index
  	@products = Product.all
  	@products = Product.order('title ASC')
  	@count = increment_count
  	@show_count = "You've been here #{@count} times" if session[:counter] > 5
  end

  def increment_count
  	if session[:counter].nil?
  		session[:counter] = 0
  	end
  	session[:counter] += 1
  end

end
