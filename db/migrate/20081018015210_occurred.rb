class Occurred < ActiveRecord::Migration
  def self.up
    add_column :outcomes, :occurred_at, :datetime
  end

  def self.down
    remove_column :outcomes, :occurred_at
  end
end
