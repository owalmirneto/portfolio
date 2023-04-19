# frozen_string_literal: true

describe Page do
  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:location) }
    it { is_expected.to validate_presence_of(:country) }
    it { is_expected.to validate_presence_of(:email) }
  end
end
