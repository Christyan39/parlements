class Department < ApplicationRecord
has_many :schedules, dependent: :destroy
has_many :senators, dependent: :destroy
end
