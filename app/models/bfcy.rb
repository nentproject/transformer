class Bfcy < ActiveRecord::Base
  has_many :claims
  has_one :job

  validates_presence_of :qtum_address, :amount
  validates_uniqueness_of :qtum_address

end
