class CartsController < ApplicationController
  before_action :set_cart

  def show
    @cart_items = @cart.cart_items.includes(:item)
  end

  def update
    cart_item = @cart.cart_items.find(params[:id])
    if cart_item.update(quantity: params[:quantity])
      redirect_to cart_path, notice: 'Quantité mise à jour.'
    else
      redirect_to cart_path, alert: 'Erreur lors de la mise à jour.'
    end
  end

  def destroy
    @cart.cart_items.destroy_all
    redirect_to cart_path, notice: 'Panier vidé.'
  end

  private

  def set_cart
    @cart = Current.session.user.cart || Cart.create(user: Current.session.user)
  end
end