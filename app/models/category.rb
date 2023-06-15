class Category < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_and_belongs_to_many :expenses
  has_one_attached :image

  # def self.get_categories
  #   all_categories = Category.all
  #   all_categories
  # end
end
