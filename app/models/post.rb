class Post < ApplicationRecord
  has_many :comments, dependent: :destroy #if a post gets deleted, then comments get deleted as well
  
  validates :title, presence: true, length: { minimum: 5}
  validates :body, presence: true
end
