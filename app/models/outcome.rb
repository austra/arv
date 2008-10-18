class Outcome < ActiveRecord::Base
  belongs_to :prop

  validates_presence_of :outcome, :prop
  validates_uniqueness_of :outcome
end
