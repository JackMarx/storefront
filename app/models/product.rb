class Product < ActiveRecord::Base

  has_many :images

  has_many :categorized_products
  has_many :categories, through: :categorized_products

  has_many :carted_products
  has_many :orders, through: :carted_products

  belongs_to :supplier
  
  def sale_message
    if price < 2 
      "Discount Item!"
    else
      "On Sale!"
    end 
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def get_the_first_image
    if images.first
      images.first.url 
    else
      "http://s9.postimg.org/5054305un/taco_coming_soon.png"
    end
  end

end