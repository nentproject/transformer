class Claim < ActiveRecord::Base
  belongs_to :bfcy
  has_one :job

  validates_presence_of :signature
  validates :email, email: true, presence: true
  validates :qtum_address, qtum_address: true, presence: true
  validates_with SignatureValidator
  validates :message, eth_address: true, presence: true
end
