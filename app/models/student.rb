class Student < User
  before_validation :age_greater_than_or_equals_18

  def age_greater_than_or_equals_18
    return false if dob.nil?
    if (dob.to_date + 18.years) >= Date.today
      errors.add(:dob, ("must be older than or equals 18"))
    end
  end

  def age
    return false if dob.nil?
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
end