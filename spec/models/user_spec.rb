require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { build(:user) }

  describe 'Associations' do
    it 'belongs to a community' do
      expect(user).to belong_to(:community)
    end

    it 'has many announcements ' do
      expect(user).to have_many(:announcements)
    end
  end

  describe 'Validations' do
    it 'validates presence of first_name' do
      expect(user).to validate_presence_of(:first_name)
    end

    it 'validates length of first_name is at least 2 and at most 50 characters' do
      expect(user).to validate_length_of(:first_name).is_at_least(2).is_at_most(50)
    end

    it 'validates presence of last_name' do
      expect(user).to validate_presence_of(:last_name)
    end

    it 'validates length of last_name is at least 2 and at most 50 characters' do
      expect(user).to validate_length_of(:last_name).is_at_least(2).is_at_most(50)
    end

    it 'validates presence of email' do
      expect(user).to validate_presence_of(:email)
    end

    it 'validates uniqueness of email with case insensitivity' do
      create(:user, email: 'unique@example.com')
      expect(user).to validate_uniqueness_of(:email).case_insensitive
    end

    it 'allows valid email formats' do
      expect(user).to allow_value('user@example.com').for(:email)
    end

    it 'does not allow invalid email formats' do
      expect(user).not_to allow_value('userexample.com').for(:email)
    end
  end

  describe 'Factory' do
    it 'has a valid factory' do
      expect(subject).to be_valid
    end
  end
end
