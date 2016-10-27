class Weather < ApplicationRecord
  scope :by_recent, -> { order(created_at: :desc) }

  def self.most_recent
    self.by_recent.first
  end

end
