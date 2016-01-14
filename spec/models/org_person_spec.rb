# == Schema Information
#
# Table name: org_people
#
#  id                     :integer          not null, primary key
#  typ_position_id        :integer
#  org_company_id         :integer
#  first_name             :string           not null
#  last_name              :string           not null
#  stripe_publishable_key :string
#  stripe_secret_key      :string
#  stripe_user_id         :string
#  stripe_currency        :string
#  stripe_account_type    :string
#  stripe_account_status  :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#

require 'rails_helper'

RSpec.describe OrgPerson, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
