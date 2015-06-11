class Friend < ActiveRecord::Base
  has_many :hangouts
  validates :name, presence: true

  def to_builder
    Jbuilder.new do |friend|
      friend.(self, :id, :name, :hangout_ids)
    end
  end
end
