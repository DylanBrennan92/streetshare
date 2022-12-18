class Group < ApplicationRecord
    has_many :memberships
    has_many :group_items
    has_many :users, through: :memberships
    has_many :items, though: :group_posts
end
