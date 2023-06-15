class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :expenses
  has_one_attached :image
end
