class CartsController < ApplicationController
  before_action :set_cart

  def show
    @cart_items = @cart.cart_items.includes(:item)
    @total_price = @cart_items.sum { |ci| ci.item.price }
  end

  def update
    cart_item = @cart.cart_items.find_by(id: params[:cart_item_id])

    if cart_item&.destroy # &. safe navigation operator si cart_item est nill alors il retourne nil
      redirect_to cart_path, notice: 'Item retiré du panier.'
    else
      redirect_to cart_path, alert: 'Erreur lors de la mise à jour du panier.'
    end
  end

  def destroy
    @cart.cart_items.destroy_all
    redirect_to cart_path, notice: 'Panier vidé.' # redirect à modifier quand panier transféré à commande
  end

  private

  def set_cart
    @cart = Current.session.user.cart || Cart.create(user: Current.session.user)
  end
end