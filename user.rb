class User
  attr_reader :email, :first_name, :last_name, :phone_number
  def initialize(email:, first_name:, last_name:, phone_number:)
    @email = email
    @first_name = first_name
    @last_name = last_name
    @phone_number = phone_number
  end
end