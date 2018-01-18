class Movie < ApplicationRecord
    has_and_belongs_to_many :genres
    has_and_belongs_to_many :issues

    has_attached_file :image, styles: { medium: "200x300#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    def self.search(search)
        if search
            left_outer_joins(:issues).where(["lower(movies.title) LIKE ? OR lower(issues.keyword) LIKE ?", "%#{search}%".downcase, "%#{search}%".downcase]).distinct
        else
            all
        end
    end

    def users
        issues = self.issues.select(:id)
        User.joins(:issues).where("issues.id IN (?)", issues).distinct
        genres = self.genres.select(:id)
        Movie.joins(:genres).where("genres.id IN (?)", genres).distinct
    end

end
