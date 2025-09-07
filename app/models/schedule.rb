class Schedule < ApplicationRecord
    belongs_to :department
    has_many :attendances, dependent: :destroy
    has_many :senators, through: :attendances
    
    validates :name, presence: true
    validates :time, presence: true
    validates :department_id, presence: true
end

