class Post < ApplicationRecord
  acts_as_taggable
  belongs_to :user
  has_many :comments
end
