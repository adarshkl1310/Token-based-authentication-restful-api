class Item < ApplicationRecord
	belongs_to :category

	has_one :image, dependent: :destroy

	attribute :image_url
end
