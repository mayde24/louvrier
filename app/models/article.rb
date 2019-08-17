class Article < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :content, presence: true
end
