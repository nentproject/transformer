class Bfcy < ActiveRecord::Base
  has_many :claims
  has_one :job

  validates_presence_of :amount
  validates :qtum_address, qtum_address: true, presence: true, uniqueness: true

end
