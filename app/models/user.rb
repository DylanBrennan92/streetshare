#take in 3 fields 
#email 
#username
#password :digest
#password confirmations
#Use mockaroo to generate dummy data - then pull into a seed file for tests?
#old regex: /\A[^@\s]+@[^@\s]+\z/

class User < ApplicationRecord
    #virtual attr that wont be saved in database itself -uses bcrypt - ?
    has_secure_password
    has_many :posts
    has_many :user_groups
    has_many :groups, through: :user_groups
   
    validates :email, presence: true, format: { with: /\A(\S+)@(.+)\.(\S+)\z/, message:"Must be a valid email address" }, length: {minimum:6, maximum:35}
    validates :username, presence: true, length: {minimum:4, maximum:20}
    validates :password, presence: true, length: {minimum:5, maximum:80}
    validates :password_confirmation, presence: true, length: {minimum:5, maximum:80}
end
