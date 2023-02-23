class Movie < ApplicationRecord
  has_many :bookmarks
  # has_many :lists, through: :bookmarks
  # A movie must have a unique title and an overview.
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
