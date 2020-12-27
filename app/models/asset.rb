class Asset < ApplicationRecord
  belongs_to :user
  validates :trade, :operation, :name, :price, presence: true
end
