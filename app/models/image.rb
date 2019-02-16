class Image < ApplicationRecord

	has_attached_file :asset, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :asset, content_type: /\Aimage\/.*\z/

	def self.get_image_url_by_id(id = 0)
		attachment = self.find_by_id(id)
		if attachment.present?
			return "http://placehold.it/200x200"
			#return attachment.get_image_url
		else
			return ""
		end
	end

	def get_image_url
		self.asset.url(:original)
	end

end

