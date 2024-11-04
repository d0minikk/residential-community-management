require 'rails_helper'

RSpec.describe Announcement, type: :model do
  subject(:announcement) { build(:announcement) }

  describe 'Associations' do
    it 'belongs to a community' do
      expect(announcement).to belong_to(:community)
    end

    it 'belongs to a user' do
      expect(announcement).to belong_to(:user)
    end
  end

  describe 'Factory' do
    it 'has a valid factory' do
      expect(announcement).to be_valid
    end
  end
end
