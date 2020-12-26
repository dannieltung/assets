class Asset < ApplicationRecord
  belongs_to :user
  validates :operation, :name, :quantity, :price, :emoluments, presence: true
end
