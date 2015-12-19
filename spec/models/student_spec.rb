require 'rails_helper'

describe Student do
  describe 'age_greater_than_or_equals_18' do
    let!(:student) { build(:student, dob: '2000-11-12') }

    it 'check student with age greater than or equals 18' do
       student.validate
       expect(student.errors.messages).to include(dob: ["must be older than or equals 18"])
    end
  end

  describe 'age' do
    let!(:student) { create(:student, dob: '1980-12-30') }

    it 'get age of student' do
      student.age.should  == Student.last.age
    end
  end

  describe 'schoolmates' do
    let!(:john)   { create(:student, dob: '1980-12-30') }    
    let!(:alex)   { create(:student, dob: '1988-12-30') }
    let!(:school) { create(:school) }    
    let!(:schools_student_john) { SchoolsUser.create(school_id: school.id, student_id: john.id) }
    let!(:schools_student_alex) { SchoolsUser.create(school_id: school.id, student_id: alex.id) }

    it 'get student schoolmates' do
      john.schoolmates.should include alex
    end
  end
end