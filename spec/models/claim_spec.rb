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

    it 'signature' do
      claim.message = 'abc'
      expect(claim.valid?).to be false

      claim.qtum_address = "QVBvpCzPWQweR6tqnt9UPF3iVTkLtv6pWX"
      claim.signature = "IGfXC4yCockohqjnHjKGbsVG2wuM5BULLXu85sf7jz+wHTsD1Mg2izSDVROvm9Dp3uh8Z4E4gkXXOzQyJXeaBxo="
      claim.message = "0x169D6B29405e725947bE8A308a44F5918815D869"
      expect(claim.valid?).to be true
    end

    it 'bad eth address message' do
      claim.qtum_address = "QVBvpCzPWQweR6tqnt9UPF3iVTkLtv6pWX"
      claim.signature = "IBvska7TXT+hX3WE+FT6V3e9ErQk1pQqDFbyx609xIFGO6zQryEEXkK8zvxXcDaC+eMVkrgUJrZbLrH5uWLN4iE="
      claim.message = "Hello world"
      expect(claim.valid?).to be false
    end
  end
end
