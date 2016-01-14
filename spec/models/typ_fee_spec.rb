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

require 'rails_helper'

RSpec.describe TypFee, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
