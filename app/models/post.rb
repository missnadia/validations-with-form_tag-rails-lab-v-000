class Post < ActiveRecord::Base
  validates :title, presence: { message: "must not be blank" }
  validates :content, length: { minimum: 100, message: "too short" }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "must be Fiction or Non-Fiction" }
end
