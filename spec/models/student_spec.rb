require 'rails_helper'

describe Student do
  describe 'age_greater_than_18' do
    let!(:student) { build(:student, dob: '2000-11-12') }

    it 'check student with age greater than 18' do
       student.validate
       expect(student.errors.messages).to include(dob: ["must be older than 18"])
    end
  end

  describe 'age' do
    let!(:student) { create(:student, dob: '1980-12-30') }

    it 'get age of student' do
      student.age.should  == Student.last.age
    end
  end
end