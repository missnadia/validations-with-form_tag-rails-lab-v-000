class Author < ActiveRecord::Base
  validates :name, format: { without: /[0-9]/, message: "does not allow numbers" }
  validates :email, presence: true, uniqueness: true
  validates :phone_number, length: { is: 10 }
end
