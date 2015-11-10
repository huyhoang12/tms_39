class Task < ActiveRecord::Base
  belongs_to :subject
  validates :name, presence: true
end
