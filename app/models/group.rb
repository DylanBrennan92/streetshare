class Group < ApplicationRecord
    has_many :memberships
    has_many :group_items
    has_many :users, through: :memberships
    has_many :posts, dependent: :destroy

    validates :name, presence: true, length: {minimum: 3}
    validates :content, presence: true, length: {minimum: 8}
    validates :location, presence: true , length: {minimum: 8}
    validates :group_owner, presence: true
   



end
