class Registry < ApplicationRecord
  has_attached_file :brand_logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :brand_logo, content_type: /\Aimage\/.*\z/
end
