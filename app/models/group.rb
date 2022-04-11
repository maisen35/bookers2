class Group < ApplicationRecord
  has_many :group_user, dependent: :destroy
end
