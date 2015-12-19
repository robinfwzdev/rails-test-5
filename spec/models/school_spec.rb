require 'rails_helper'

describe School do
  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :address }
  end

  describe 'enumerize' do
    it { should enumerize(:type_of_school).in(:university, :high_school, :secondary_school, :primary_school) }
  end
end