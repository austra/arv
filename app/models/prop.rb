class Prop < ActiveRecord::Base
  has_many :outcomes
  has_many :viewings

  validates_presence_of :prop
end
