require_relative 'session'
require_relative 'twitter_idp'
require_relative 'facebook_idp'
require_relative 'salesforce_idp'
RSpec.describe Session do
  let(:current_user) { double('current_user') }
  let(:session) { described_class.new(current_user) }
  describe '#create' do
    it 'creates a new session' do
      expect(current_user).to receive(:email) { 'email@email.com' }
      expect(session.create(SalesforceIdp)).to eq(
        "Authenticated 🔓 using SalesforceIdp with email: email@email.com"
      )
    end
  end
end