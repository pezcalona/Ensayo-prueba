class Review < ApplicationRecord
  belongs_to :restaurant

  validates :review, length: { minimum: 5 }
  
end
