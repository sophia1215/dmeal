# == Schema Information
#
# Table name: org_companies
#
#  id               :integer          not null, primary key
#  name             :string           not null
#  avatar           :string
#  description      :text
#  verification_doc :string
#  verified         :boolean
#  typ_company_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe OrgCompany, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
