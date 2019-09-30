class User < ApplicationRecord
    has_many :views
    has_many :episodes, through: :views
    
    has_many :user_shows
    has_many :shows, through: :user_shows

    has_secure_password
end
