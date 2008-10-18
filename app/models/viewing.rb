class Viewing < ActiveRecord::Base
  belongs_to :prop

  validates_presence_of :image, :prop
end
