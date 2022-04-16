class Receipt < ApplicationRecord
  validates :comment, presence: true
  validates :date, presence: true
  validates :image, presence: true

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :category_id, numericality: { other_than: 1 }
  belongs_to :category
end
