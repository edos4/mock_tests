require_relative 'user'
require_relative 'identity_provider'

class Session
  attr_reader :current_user
  def initialize(user)
    @current_user = user
  end
  def create(idp)
    idp.authenticate(current_user.email)
  end
end