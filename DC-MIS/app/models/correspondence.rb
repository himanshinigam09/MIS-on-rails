class Correspondence < ActiveRecord::Base
  attr_accessible :address, :date, :description, :medium, :subject, :type_of_corr, :user_initials
has_many :communications
has_many :dc_members, through: :communications
paginates_per 10
default_scope order('type_of_corr')
end
