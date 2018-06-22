class Article < ApplicationRecord
  belongs_to :user
  validates :title,
            presence: true,
            length: {minimum: 2, maximum: 30}

  validates :description,
            length: {minimum: 5, maximum: 250}

  validates :user_id,
            presence: true

end
