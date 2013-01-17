class Incident < ActiveRecord::Base
  belongs_to :victim
  belongs_to :spam
  # attr_accessible :title, :body
end
