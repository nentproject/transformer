class Bfcy < ActiveRecord::Base
  has_many :claims
  has_one :job

  vadilates :amount, presence: true, numericality: { only_integer: true }
  validates :qtum_address, qtum_address: true, presence: true, uniqueness: true

end
