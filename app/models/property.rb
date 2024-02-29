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
class Property < ApplicationRecord

  # Scopes
  scope :latests, -> { order(created_at: :desc) }
  scope :by_user, ->(user) { where(user: user) }

  # Relationships
  belongs_to :user
end
