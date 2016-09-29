class Member < ApplicationRecord

  belongs_to :doodle

  serialize :dates

end
