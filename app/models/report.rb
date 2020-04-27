class Report < ApplicationRecord
  belongs_to :reporter, class_name: 'User'
  belongs_to :project

  validates :reason, presence: true

  enum status: [ :active, :resolved ]
end
