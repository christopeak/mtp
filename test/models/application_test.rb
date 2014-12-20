require 'test_helper'

class ApplicationTest < ActiveSupport::TestCase
	fixtures :applications
  # test "the truth" do
  #   assert true
  # end
	test "application attributes must not be empty" do
		appform = Application.new
		assert appform.invalid?
		assert appform.errors[:projid].any?
		assert appform.errors[:title].any?
		assert appform.errors[:cost].any?
		assert appform.errors[:location].any?
	end
	
	test "project cost must be greater than $0.01" do
		appform = Application.new(projid:		100032,
															title:		"project 100032",
															cost: 		0,
															location:	"somewhere")
		assert appform.invalid?
		assert_equal ["must be greater than or equal to 0.01"],
			appform.errors[:cost]
		
		appform.cost = -1
		assert_equal ["must be greater than or equal to 0.01"],
			appform.errors[:cost]
			
		appform.cost = 1
		assert appform.valid?
		
	end
end
