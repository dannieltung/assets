class Asset < ApplicationRecord
  belongs_to :user
  validates :trade, :operation, :name, :quantity, :price, :emoluments, presence: true
end
