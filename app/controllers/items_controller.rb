class ItemsController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def items_params
  end
end
