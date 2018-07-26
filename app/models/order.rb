class Order < ApplicationRecord

	# associations
	has_many :line_items
	belongs_to :user, optional: true
	# serializers
	serialize :order_items, Hash

end
