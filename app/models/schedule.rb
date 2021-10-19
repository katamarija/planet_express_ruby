class Schedule < ApplicationRecord
  belongs_to :delivery_contract
  has_and_belongs_to_many :crew_members
end
