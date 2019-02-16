class Category < ApplicationRecord

	has_many :items
	has_one :image, dependent: :destroy
	
	attribute :image_url
end
