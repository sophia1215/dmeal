# == Schema Information
#
# Table name: trx_orders
#
#  id                 :integer          not null, primary key
#  org_company_id     :integer
#  bill_to_contact_id :integer
#  ship_to_contact_id :integer
#  trx_order_fee_id   :integer
#  total_amount       :decimal(20, 4)
#  purchased_at       :datetime
#  transport_method   :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe TrxOrder, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
