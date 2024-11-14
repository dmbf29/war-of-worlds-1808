class Weapon < ApplicationRecord
  has_many :holsters # weapon.holsters
  has_many :aliens, through: :holsters # weapon.aliens
  has_many :planets, through: :aliens # weapon.planets
  validates :name, presence: true, uniqueness: true
end
