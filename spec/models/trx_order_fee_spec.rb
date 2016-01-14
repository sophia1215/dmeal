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

require 'rails_helper'

RSpec.describe TrxOrderFee, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
