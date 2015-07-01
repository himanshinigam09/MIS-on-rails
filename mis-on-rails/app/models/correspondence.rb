class Correspondence < ActiveRecord::Base
  attr_accessible :address, :date, :description, :medium, :subject, :type_of_corr, :user_initials
has_many :communications
has_many :dc_members, through: :communications


end
