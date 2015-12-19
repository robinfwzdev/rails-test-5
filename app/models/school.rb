class School < ActiveRecord::Base
  extend Enumerize

  has_and_belongs_to_many :students

  validates :name,   presence: true
  validates :address,   presence: true

  enumerize :type_of_school, in: [:university, :high_school, :secondary_school, :primary_school]
end