class Issue < ApplicationRecord
    has_and_belongs_to_many :movies
    has_and_belongs_to_many :users
end
