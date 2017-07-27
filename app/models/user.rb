require 'bcrypt'
require 'data_mapper'
require 'dm-postgres-adapter'

class User
  include DataMapper::Resource

  attr_reader :password
  attr_accessor :password_confirmation

  validates_confirmation_of :password
  validates_presence_of :email

  property :id,               Serial
  property :email,            String, format: :email_address, required: true
  property :password_digest,  Text

  def password=(password)
    @password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end
end
