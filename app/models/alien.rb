class Alien < ApplicationRecord
  belongs_to :planet
  has_many :holsters, dependent: :destroy
  has_many :weapons, through: :holsters
  validates :name, presence: true
end
