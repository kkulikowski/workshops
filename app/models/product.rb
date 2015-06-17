class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates_presence_of :title, :description, :price
  validates_format_of :price, :with => /\A\d+(?:\.\d{0,2})?\z/

  def average_rating
    self.reviews.average(:rating).round(2) if self.reviews.size > 0
  end
end
