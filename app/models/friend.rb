class Friend < ActiveRecord::Base
  has_many :hangouts
  validates :name, presence: true
end
