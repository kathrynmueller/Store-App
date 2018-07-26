class ApplicationController < ActionController::Base

	before_action :set_categories, :brands

	def set_categories	
		@categories = Category.all
	end

	def brands
  		@brands = Product.pluck(:brand).sort.uniq
	end

end
