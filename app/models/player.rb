class Player < ApplicationRecord
  has_many :memberships
  has_many :teams, through: :memberships

  after_create :set_name

  def set_name
    self.name ||= "#{id} - hello"
    self.save!
  end
end
