class Issue < ApplicationRecord
    # has_many :movie_therapies, dependent: :destroy
    has_and_belongs_to_many :movies
    # has_many :movies, through: :movie_therapies
    # has_many :user_psyches, dependent: :destroy
    has_and_belongs_to_many :users
    # has_many :users, through: :user_psyches
end
