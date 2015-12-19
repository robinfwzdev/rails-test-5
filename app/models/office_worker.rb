class OfficeWorker < User
  before_validation :age_greater_than_or_equals_20

  def age_greater_than_or_equals_20
    return false if dob.nil?
    if (dob.to_date + 20.years) >= Date.today
      errors.add(:dob, ("must be greater than or equals 20"))
    end
  end
end