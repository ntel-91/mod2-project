class User < ApplicationRecord
    has_many :views
    has_many :episodes, through: :views
end
