# == Schema Information
#
# Table name: org_contacts
#
#  id              :integer          not null, primary key
#  address1        :string           not null
#  address2        :string
#  city            :string           not null
#  postal_code     :string           not null
#  email           :string           not null
#  business_number :string           not null
#  cell_number     :string
#  latitude        :float            not null
#  longitude       :float            not null
#  avatar          :string
#  typ_contact_id  :integer
#  typ_country_id  :integer
#  typ_region_id   :integer
#  org_company_id  :integer
#  org_person_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe OrgContact, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
