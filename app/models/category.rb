class Category < ActiveRecord::Base

  has_many :categorized_products
  has_many :products, through: :categorized_products


  def uri_encoded_name
    URI.encode(name).gsub("&","%26")
  end
end
