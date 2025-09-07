class Attendance < ApplicationRecord
  belongs_to :senator
  belongs_to :schedule

  attr_accessor :presence
end
