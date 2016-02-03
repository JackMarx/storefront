class ImagesController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
  end

  def create
    @image = Image.create(url: params[:url], product_id: params[:product_id])
    redirect_to "/products/#{@image.product.id}"
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.update(url: params[:url])

    redirect_to "/products/#{@image.product.id}"
  end

  def destroy
    @image = Image.find(params[:id])
    product_id = @image.product_id
    @image.destroy

    redirect_to "/products/#{product_id}"
  end
end
