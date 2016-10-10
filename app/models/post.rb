class Post < ActiveRecord::Base
  has_many :comments
  has_many :users, through: :comments
  has_many :users_liked, through: :votes, source: :user

  validates :title, :url, presence: true
end
