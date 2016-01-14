# == Schema Information
#
# Table name: typ_fees
#
#  id             :integer          not null, primary key
#  name           :string           not null
#  fee_percentage :float            not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class TypFee < ActiveRecord::Base
  has_many :TrxOrderFee
end
