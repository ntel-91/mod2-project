class Episode < ApplicationRecord
    belongs_to :show
    has_many :views
    has_many :users, through: :views
end
