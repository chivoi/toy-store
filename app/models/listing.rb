class Listing < ApplicationRecord
  belongs_to :category
  enum condition: {damaged: 0, used: 1, good: 2, excellent: 3, sealed: 4}
end
