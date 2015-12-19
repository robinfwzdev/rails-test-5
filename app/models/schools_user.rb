class SchoolsUser < ActiveRecord::Base
  belongs_to :school
  belongs_to :student, :foreign_key => :user_id
end