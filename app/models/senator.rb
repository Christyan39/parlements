class Senator < ApplicationRecord
	belongs_to :party
	belongs_to :department
end
