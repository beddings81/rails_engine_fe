class ItemsController < ApplicationController
  def index
    @items = ItemsFacade.all_items
  end

  def show
    @item = ItemsFacade.one_item(params[:id])
  end
end