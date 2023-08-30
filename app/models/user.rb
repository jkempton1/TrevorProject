class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]{2,}\z/i, message: "Invalid email" }
    validates :user_name, presence: true, uniqueness: true, format: { with: /\A[\w]{4,}\z/i, message: "Invalid username, must be at least 4 characters"}
    has_secure_password
end
