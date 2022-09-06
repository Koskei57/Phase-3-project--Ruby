class Book < ActiveRecord::Base
  has_many :reviews
  has_many :authors , through: :reviews
end