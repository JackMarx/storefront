class ProductsController < ApplicationController

def index
  @tacos = Product.all
  if params[:sort] && params[:sort_order]
    @tacos = @tacos.order(params[:sort] => params[:sort_order])
  end
  if params[:discount]
    @tacos = @tacos.where("price < ?", params[:discount])
  end
end

def show
  @taco = Product.find_by(id: params[:id])
end

def new
end

def create
  @taco = Product.create(name: params[:name], price: params[:price], supplier_id: params[:supplier][:supplier_id], description: params[:description], rating: params[:rating])

  Image.create(url: params[:image], product_id: @taco.id) if params[:image] != ""

  flash[:success] = "Taco made!"
  redirect_to "/products/#{@taco.id}"
end

def edit
  @taco = Product.find_by(id: params[:id])
end

def update
  @taco = Product.find_by(id: params[:id])
  @taco.update(name: params[:name], price: params[:price], description: params[:description], rating: params[:rating])

  Image.create(url: params[:image], product_id: @taco.id) if params[:image] != ""

  
  flash[:success] = "This taco has been updated!"
  redirect_to "/products/#{@taco.id}"
end

def destroy
  @taco = Product.find_by(id: params[:id])
  @taco.destroy
  flash[:warning] = "Taco destroyed!"
  redirect_to "/"
end


def random
  @taco = Product.all.sample

  render :show
end

def search
  @tacos = Product.where("name LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")

  render :index
end












end
