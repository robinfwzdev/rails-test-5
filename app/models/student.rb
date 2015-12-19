class Student < User
  before_validation :age_greater_than_18

  def age_greater_than_18
    return false if dob.nil?
    if (dob.to_date + 18.years) >= Date.today
      errors.add(:dob, ("must be older than 18"))
    end
  end
end