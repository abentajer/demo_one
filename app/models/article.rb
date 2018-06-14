class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 2, maximum: 30}
  validates :description, length: {minimum: 5, maximum: 250}


end
