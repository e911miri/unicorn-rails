class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  # attr_accessible :title, :body
  has_many :microposts
  has_many :messages
  has_and_belongs_to_many :groups
  def student?
    Student.find_by_matric_no(username)
  end
  
  def student
    Student.find_by_matric_no(username)
  end
  
  def lecturer?
    Lecturer.find_by_staff_no(username)
  end
  
  def lecturer
    Lecturer.find_by_staff_no(username)
  end
end
