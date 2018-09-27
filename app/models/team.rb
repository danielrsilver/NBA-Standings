class Team < ApplicationRecord
  scope :eastern, -> { where(conference: "Eastern") }
  scope :western, -> { where(conference: "Western") }
  scope :ranked, -> { order(wins: :desc, losses: :asc) }

  def win_percent
    100.0 * self.wins / (self.wins + self.losses)
  end
end
