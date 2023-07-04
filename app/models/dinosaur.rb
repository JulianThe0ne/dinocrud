class Dinosaur < ApplicationRecord
  has_many :comments, dependent: :destroy
  attribute :image, :string
end
