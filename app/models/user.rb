class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    has_and_belongs_to_many :genres
    has_and_belongs_to_many :issues
    has_many :movies, -> { distinct }, through: :issues

    def unassigned_issues
        issues = self.issues.select(:id)
        Issue.where("id NOT IN (?)", issues)
    end

    # def movies
    #     issues = self.issues.select(:id)
    #     Movie.joins(:issues).where("issues.id IN (?)", issues).distinct
    #     genres = self.genres.select(:id)
    #     Movie.joins(:genres).where("genres.id IN (?)", genres).distinct
    # end

end
