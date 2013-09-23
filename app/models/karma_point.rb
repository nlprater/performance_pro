class KarmaPoint < ActiveRecord::Base
  after_save :calculate_user_karma_total
  attr_accessible :user_id, :label, :value
  belongs_to :user

  validates :user, :presence => true
  validates :value, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :label, :presence => true

  def calculate_user_karma_total
    self.user.update_attributes(total_karma_points: self.user.total_karma)
  end

end
