# == Schema Information
#
# Table name: typ_subcategories
#
#  id              :integer          not null, primary key
#  name            :string
#  typ_category_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class TypSubcategory < ActiveRecord::Base
  belongs_to :typ_category, foreign_key: "typ_category_id"
  has_many :org_products
end
