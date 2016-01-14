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

class TypSalesTax < ActiveRecord::Base
  belongs_to :typ_region, foreign_key: "typ_region_id"
  belongs_to :typ_tax, foreign_key: "typ_tax_id"
end
