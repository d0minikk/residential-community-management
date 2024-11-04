require 'rails_helper'

RSpec.describe Building, type: :model do
  subject(:building) { build(:building) }

  describe 'Associations' do
    it 'belongs to a community' do
      expect(building).to belong_to(:community)
    end

    it 'has many units' do
      expect(building).to have_many(:units)
    end
  end

  describe 'Factory' do
    it 'has a valid factory' do
      expect(building).to be_valid
    end
  end
end
