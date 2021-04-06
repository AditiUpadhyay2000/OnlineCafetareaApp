
class MenuController < ApplicationController
  before_action :set_categories
  
  def index
    @content = 'menu'
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def search
    query = params[:search]

    results = Product.where('name  LIKE ?', "%#{query}%")
    if params[:filter] == 'Select Filter'
      @products = results
    
    else 
      symbol = params[:filter].gsub(/ /,'_').downcase!.to_sym
      @products = results.where(symbol => true)
    end
  end

  private
  def set_categories
    @cats = Category.all.where(display: true)
  end
end

