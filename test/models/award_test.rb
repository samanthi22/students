require 'test_helper'

class AwardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_validity_of_year
    
    student = Student.create({given_name: "Mark", date_of_birth: "1972-09-05", start_date: "2009-01-18"})
    award = Award.new({name: "Test award", student_id: student.id})
    assert !award.valid?
    
    award.year = 1979
    assert !award.valid?
    
    award.year = 1980
    assert award.valid?
    
    award.year = Date.today.year
    assert award.valid?
    
    award.year = Date.today.year + 1
    assert !award.valid?
  end
end
