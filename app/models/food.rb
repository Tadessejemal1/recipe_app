class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
  validates :measurement_unit, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates_uniqueness_of :name
end
