#email:string
#password_digest:string

#password:string virtual
#password_confirmation:string virtual

class User < ApplicationRecord

    # uses a gem called bcrypt which hashes the password into the password_digest
    has_secure_password

    # makes sure there is a valid email address in db
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"  }

end
