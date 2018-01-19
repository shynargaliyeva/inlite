class Movie < ApplicationRecord
    has_and_belongs_to_many :genres
    has_and_belongs_to_many :issues
    before_action :authorize

    def self.search(search)
        if search
            left_outer_joins(:issues).where(["lower(movies.title) LIKE ? OR lower(issues.keyword) LIKE ?", "%#{search}%".downcase, "%#{search}%".downcase]).distinct
        else
            all
        end
    end

end
