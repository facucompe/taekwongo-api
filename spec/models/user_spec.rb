require 'rails_helper'

describe User, type: :model do
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to validate_uniqueness_of(:name) }

  subject(:user) { build(:user) }

  describe 'When creating a user' do
    subject(:user) do
      build(:user)
    end

    it { is_expected.to be_valid }

    context 'with a wrong email' do
      subject(:user) { build(:user, email: Faker::Name.name) }
      it { is_expected.not_to be_valid }
    end
  end
end