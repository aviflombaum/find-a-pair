class Pair < ApplicationRecord
  # Alias Associations
  belongs_to :requestor_user, :class_name => "User"
  belongs_to :respondor_user, :class_name => "User", :optional => true
  validates :title, :length => {in: 10..100}
  validates :description, :presence => true
  validate  :different_respondor # still into the name

  def self.by_status(status)
    case status
    when :open
      where(:respondor_user => nil)
    when :accepted
      where.not(:respondor_user => nil)
    end    
  end

  def different_respondor
    if self.respondor_user == self.requestor_user
      self.errors.add(:respondor_user)
    end
  end

  def accepted_by(user)
    self.update(:respondor_user => user)
  end

  def accepted?
    true if respondor_user
  end

  def topic
    ActiveSupport::Deprecation.warn("Please use `title` over `topic`")
    self.title
  end
end