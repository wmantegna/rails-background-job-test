class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def create
    @item = Item.new
    
    if @item.save
      flash[:notice] = 'Item was successfully created'
    else
      flash[:notice] = :unprocessable_entity
    end

    redirect_to items_path
  end
end