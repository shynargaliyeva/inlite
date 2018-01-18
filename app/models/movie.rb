class Movie < ApplicationRecord
    # has_many :movie_genres, dependent: :destroy
    # has_many :genres, through: :movie_genres
    has_and_belongs_to_many :genres

    # has_many :movie_therapies, dependent: :destroy
    has_and_belongs_to_many :issues
    # has_many :psyches, through: :movie_therapies, source: :psyche

    has_attached_file :image, styles: { medium: "200x300#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    def self.search(search)
        if search
            where(["title LIKE ?", "%#{search}%"])
        else
            all
        end
    end

    def movies
        issues = self.issues.select(:id)
        Movie.joins(:issues).where("issues.id IN (?)", issues).distinct
        genres = self.genres.select(:id)
        Movie.joins(:genres).where("genres.id IN (?)", genres).distinct
    end

end
