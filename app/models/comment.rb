class Comment < ApplicationRecord
  belongs_to :dinosaur
  # allows us to do: @comment.dinosaur
  validates :content, presence: true
end
