class Store < ActiveRecord::Base
	has_many :employees
	validates :name, presence: true, length: {minimum:3}
	validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
	# validates :mens_apparel, inclusion: {in: [true,false]}
	# validates :womens_apparel, inclusion: {in: [true,false]}
	validate :mens_apparel, :check_boolean_apparel
	validate :womens_apparel, :check_boolean_apparel


	def check_boolean_apparel
		unless mens_apparel.present? || womens_apparel.present?
			errors.add(:mens_apparel, "No Boolean Values")
			errors.add(:womens_apparel, "No Boolean Values")
		end
	end

end
