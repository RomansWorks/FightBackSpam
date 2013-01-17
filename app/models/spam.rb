class Spam < ActiveRecord::Base
  belongs_to :submitter, :class_name => "User"

  has_many :incidents
  has_many :victims, :class_name => "User", :through => :incidents

  attr_accessible :content, :spammer, :title
end
