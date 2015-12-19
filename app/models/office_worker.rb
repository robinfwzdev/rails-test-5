class OfficeWorker < User
  validates_numericality_of :years_of_exp, greater_than_or_equal_to: 0

  validate :age_greater_than_or_equals_20

  def age_greater_than_or_equals_20
    return false if dob.nil?
    if (dob.to_date + 20.years) >= Date.today
      errors.add(:dob, ("must be greater than or equals 20"))
    end
  end
end