class Lecturer < ActiveRecord::Base
  attr_accessible :department_id, :userprofile_id, :staff_no
  belongs_to :departments
  has_one :userprofile
end
