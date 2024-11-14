class Holster < ApplicationRecord
  belongs_to :alien # holster.alien
  belongs_to :weapon # holster.weapon
  # validates :alien, uniqueness: { scope: :weapon }
  validates :weapon, uniqueness: { scope: :alien }
end
