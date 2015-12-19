require 'rails_helper'

describe OfficeWorker do
  context 'Validation' do
    it { should validate_numericality_of(:years_of_exp).is_greater_than_or_equal_to(0) }
  end

  describe 'age_greater_than_or_equals_20' do
    let!(:office_worker) { build(:office_worker, dob: '2000-11-12') }

    it 'check office worker with age greater than or equals 20' do
       office_worker.validate
       expect(office_worker.errors.messages).to include(dob: ["must be greater than or equals 20"])
    end
  end
end