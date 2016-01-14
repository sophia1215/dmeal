# == Schema Information
#
# Table name: typ_companies
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TypCompany < ActiveRecord::Base
  has_many :org_companies
end
