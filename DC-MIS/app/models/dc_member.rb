class DcMember < ActiveRecord::Base
  attr_accessible :blood_group, :course_name, :date_of_birth, :email, :father_name, :first_name, :gender, :github_link, :guardian_name, :last_name, :linkedin_link, :local_address, :mid_name, :mother_name, :permanent_address, :sem_of_joining
has_many :communications
has_many :correspondences, through: :communications


end
