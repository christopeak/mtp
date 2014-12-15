class Application < ActiveRecord::Base

	validates :projid, :title, :cost, :location, presence: true
	validates :cost, numericality: {greater_than_or_equal_to: 0.01}
	validates :cost, numericality: {less_than_or_equal_to: 9999999.99}

end
