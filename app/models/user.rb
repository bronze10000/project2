class User
  include Mongoid::Document
  include ActiveModel::SecurePassword # load secure password

  has_secure_password # tell rails this model has a secure password

  field :first_name, type: String
  field :last_name, type: String
  field :username, type: String
  field :password_digest, type: String

  validates :username, uniqueness: { case_sensitive: false } # ensure usernames are unique
  validates :password, confirmation: true # ensure password confirmation is filled out and matched the password
end
