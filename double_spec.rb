require_relative 'session'
require_relative 'twitter_idp'
require_relative 'facebook_idp'
require_relative 'salesforce_idp'
RSpec.describe Session do
  # Run the code and expect an error:
  # Double “current_user”> received unexpected message :email with (no args)
  let(:current_user) { double('user') }
  let(:session) { described_class.new(current_user) }
  describe '#create' do
    it 'creates a new session' do
      expect(session.create(SalesforceIdp)).to eq(
      "Authenticated 🔓 using SalesforceIdp with email: #{current_user.email}"
      )
    end
  end
end

