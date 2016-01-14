# == Schema Information
#
# Table name: typ_sales_taxes
#
#  id            :integer          not null, primary key
#  tax_rate      :float            not null
#  typ_region_id :integer
#  typ_tax_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe TypSalesTax, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
