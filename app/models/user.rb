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
   
    validates :email, presence: true, format: { with: /\A(\S+)@(.+)\.(\S+)\z/, message:"Must be a valid email address" }
end
