class Author < ActiveRecord::Base
  validates :name, presence: true, format: { without: /[0-9]/, message: "does not allow numbers" }
  validates :email, uniqueness: { message: "email is already taken"}
  validates :phone_number, length: { is: 10, message: "too short" }
end
