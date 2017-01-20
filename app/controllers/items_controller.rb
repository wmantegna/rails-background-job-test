class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def create
    # Created by Human
    @item = Item.new
    
    if @item.save
      flash[:notice] = 'Item was successfully created'
    else
      flash[:notice] = :unprocessable_entity
    end

    redirect_to items_path
  end

  def update
    # Updates occur within background job
    Resque.enqueue(ItemJob, params[:id])

    redirect_to items_path
  end
end