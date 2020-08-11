class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false },
            format: { with: /\A(.+)@(.+)\z/ }, length: { minimum: 4, maximum: 254 }  

  validates :password, presence: true

end
