require 'rails_helper'

RSpec.describe Unit, type: :model do
  subject(:unit) { build(:unit) }

  describe 'Associations' do
    it 'belongs to a building' do
      expect(unit).to belong_to(:building)
    end

    it 'belongs to a community through building' do
      # Since Unit belongs to Building, which belongs to Community,
      # we can test the indirect association if necessary.
      # However, typically, only direct associations are tested.
      # Here's how you might test it:
      expect(unit.building.community).to be_a(Community)
    end
  end

  describe 'Factory' do
    it 'has a valid factory' do
      expect(unit).to be_valid
    end
  end
end
