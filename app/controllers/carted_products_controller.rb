class CartedProductsController < ApplicationController

  def create
    CartedProduct.create(product_id: params[:product_id], quantity: params[:quantity], user_id: current_user.id, status: "Carted")

  end
end
