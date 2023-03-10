class User < ApplicationRecord

  validates :displayname, presence: true, length: {minimum: 3, maximum: 18}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
