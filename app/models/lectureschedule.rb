class Lectureschedule < ActiveRecord::Base
  attr_accessible :course_id, :day, :notes, :timefrom, :timeto, :venue
end
