class Episode < ApplicationRecord
    has_many :views
    has_many :users, through: :views
    
    belongs_to :show
end
