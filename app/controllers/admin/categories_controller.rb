class Admin::CategoriesController < ApplicationController

  def index
    @categories = Category.order(name: :asc).all
  end

  def new
    @category = Category.new
  end
  
  def create
  end
  
end