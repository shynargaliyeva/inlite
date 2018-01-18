class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    # has_many :user_genres, dependent: :destroy
    has_and_belongs_to_many :genres
    # has_many :genres, through: :user_genres
    # has_many :user_psyches, dependent: :destroy
    has_and_belongs_to_many :issues
    # has_many :psyches, through: :user_psyches, source: :psyche
end
