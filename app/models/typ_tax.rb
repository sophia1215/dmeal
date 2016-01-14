# == Schema Information
#
# Table name: typ_taxes
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TypTax < ActiveRecord::Base
  has_many :typ_sales_taxes
end
