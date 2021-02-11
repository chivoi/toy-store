class Listing < ApplicationRecord
  belongs_to :category
  enum condition: {damaged: 0, used: 1, good: 2, excellent: 3, sealed: 4}
  has_many :listing_features
  has_many :features, through: :listing_features
  accepts_nested_attributes_for :listing_features
end
