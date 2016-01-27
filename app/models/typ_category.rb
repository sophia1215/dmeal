# == Schema Information
#
# Table name: typ_categories
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TypCategory < ActiveRecord::Base
  has_many :org_products
  has_many :typ_subcategory

  validates :name, presence: true
end
