class Hangout < ActiveRecord::Base
  belongs_to :friend
  validates :friend_id, presence: true

  before_save :set_default_date_if_empty

  def set_default_date_if_empty
    date ||= Time.now
  end
end
