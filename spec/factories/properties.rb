# == Schema Information
#
# Table name: properties
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_properties_on_user_id  (user_id)
#
FactoryBot.define do
  factory :property do
    name { "MyString" }
    user { nil }
  end
end
