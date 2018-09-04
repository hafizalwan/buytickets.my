class Activity < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :about, presence: true
  validates :details_1, presence: true
  validates :directions, presence: true
  validates :how_to, presence: true
  validates :activity_info, presence: true
  validates :refund_policies, presence: true
  validates :location_map, presence: true
  validates :location_title, presence: true
  validates :pricing, presence: true
end
