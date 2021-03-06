class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  	@category = Category.find(params[:id])
  	@products = @category.products
  end

    def items_by_brand
    	@products = Product.where(brand: params[:brand])
    	@brand = params[:brand]
  end

end
