class SalesforceIdp < IdentityProvider
  def self.authenticate(email)
    "Authenticated 🔓 using #{name.split('::').last} with email: #{email}"
  end
end