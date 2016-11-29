class Ticket < ApplicationRecord
	  has_attached_file :image, styles: { large: "600x600>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end