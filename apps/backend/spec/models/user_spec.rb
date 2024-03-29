# frozen_string_literal: true

describe User do
  subject(:user) { build(:blank_user) }

  describe "associations" do
    it { is_expected.to have_many(:schools) }
    it { is_expected.to have_many(:courses) }
    it { is_expected.to have_many(:pages) }
    it { is_expected.to have_many(:companies) }
    it { is_expected.to have_many(:jobs) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }

    context "when email exists" do
      before do
        create(:user, email:)
        user.valid?
      end

      let(:email) { Faker::Internet.unique.safe_email }
      let(:user) { build(:user, email:) }

      it { expect(user.errors.messages).to have_key(:email) }
      it { expect(user).to be_invalid }
    end
  end
end
