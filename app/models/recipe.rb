class Recipe < ApplicationRecord

  belongs_to :user

  has_rich_text :instructions

  validates :difficulty, inclusion: { in: %w[easy medium hard], message: "%{value} is not a valid difficulty" }

end
