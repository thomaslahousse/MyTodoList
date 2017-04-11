class Task < ApplicationRecord
  belongs_to :author
  scope :depassed, -> {where("date_due < ?", DateTime.now)}
  scope :tast_not_realised, -> { where(status: false)}
  scope :current, -> {where("date_due > ?", DateTime.now)}
  #scope :current2, -> { order(date_due :desc)}
end
