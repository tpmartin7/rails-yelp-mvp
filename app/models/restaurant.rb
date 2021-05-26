class Restaurant < ApplicationRecord
  def self.categories
    %w[chinese italian japanese french belgian]
  end

  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: Restaurant.categories }
end
