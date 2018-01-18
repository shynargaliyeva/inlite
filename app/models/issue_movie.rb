class IssueMovie < ApplicationRecord
  belongs_to :movie
  belongs_to :issue
end
