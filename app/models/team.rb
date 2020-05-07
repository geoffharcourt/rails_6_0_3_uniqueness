class Team < ApplicationRecord
  has_many :memberships
  has_many :players, through: :memberships
end
