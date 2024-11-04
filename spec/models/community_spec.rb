require 'rails_helper'

RSpec.describe Community, type: :model do
  subject(:community) { build(:community) }

  describe 'Associations' do
    it 'has many users' do
      expect(community).to have_many(:users)
    end

    it 'has many announcements' do
      expect(community).to have_many(:announcements)
    end

    it 'has many buildings' do
      expect(community).to have_many(:buildings)
    end

    it 'has many units through buildings' do
      expect(community).to have_many(:units).through(:buildings)
    end
  end

  describe 'Factory' do
    it 'has a valid factory' do
      expect(community).to be_valid
    end
  end
end
