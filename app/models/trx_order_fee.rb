# == Schema Information
#
# Table name: trx_order_fees
#
#  id           :integer          not null, primary key
#  fee_amount   :float            not null
#  trx_order_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class TrxOrderFee < ActiveRecord::Base
  belongs_to :TrxOrder, foreign_key: "trx_order_id"
  
  validates :fee_amount, presence: true, numericality: true
end
