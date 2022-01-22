require_relative 'session'
require_relative 'twitter_idp'
require_relative 'facebook_idp'
session = Session.new(
  User.new(
    email: 'foobar@gmail.com',
    first_name: 'Derek',
    last_name: 'Dyer',
    phone_number: '5555555555'
  )
)
session.create(TwitterIdp)
session.create(FacebookIdp)
