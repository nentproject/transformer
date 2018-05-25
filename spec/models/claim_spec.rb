require 'rails_helper'

RSpec.describe Claim, type: :model do
  context "validation" do
    let(:claim) { build(:claim) }
    it 'correct claim' do
      expect(claim.valid?).to be true
    end

    it 'email' do
      claim.email = "a"
      expect(claim.valid?).to be false
    end

    it 'qtum_address' do
      claim.qtum_address = "13ALM64pKj4B14Bnu2AGu6WhNr4wBhgjeE" #bitcoin address
      expect(claim.valid?).to be false
    end
  end
end
