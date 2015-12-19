require 'rails_helper'

describe SchoolsUser do
  context 'Association' do
    it { should belong_to :school }
  end
end