class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :incidents
  has_many :submitted_reports, :class_name => 'Spam'
  has_many :spam_incidents, :class_name => 'Spam', :through => :incidents
end
