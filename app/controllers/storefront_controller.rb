class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  	#link to this page would be:
  	#<%= link to product.category.name,categorical_path(cat_id: prouct.category.id) >
  	@products = Product.where(category: params[:cat_id])
  	@category = Category.find(params[:cat_id])
  end

  def items_by_brand
  	@products = Product.where(brand: params[:brand])
  	@brands = params[:brand]
  end
end
