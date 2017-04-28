class Guest < ApplicationRecord
  has_many :members, class_name: "Guest", foreign_key: "related_guest_id"
  belongs_to :leader, class_name: "Guest"

  validates :first_name, presence: true
end
