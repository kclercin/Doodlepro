class Doodle < ApplicationRecord

  has_many :members
  serialize :dates, Array
  has_secure_token

end
