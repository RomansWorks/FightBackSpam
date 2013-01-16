class Spam < ActiveRecord::Base
  belongs_to :submitter, :class_name => "User"

  has_many :victims, :class_name => "User"

  attr_accessible :content, :spammer, :title
end
