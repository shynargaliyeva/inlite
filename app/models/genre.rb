class Genre < ApplicationRecord
    # has_many :movie_genres
    # has_many :movies, through: :movie_genres
    has_and_belongs_to_many :movies
    # has_many :user_genres
    # has_many :users, through: :user_genres
    has_and_belongs_to_many :users
end
