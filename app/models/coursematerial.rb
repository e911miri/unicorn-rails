class Coursematerial < ActiveRecord::Base
  attr_accessible :course_id, :material_path, :notes, :title, :type
end
