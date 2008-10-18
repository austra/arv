class Initial < ActiveRecord::Migration
  def self.up
    create_table :props do |t|
      t.column :id, :int
      t.column :prop, :string
      t.column :created_at, :datetime
      t.column :updated_at, :datetime
    end
    
    create_table :outcomes do |t|
      t.column :id, :int
      t.column :prop_id, :int
      t.column :outcome, :string
      t.column :image, :blob
      t.column :created_at, :datetime
      t.column :updated_at, :datetime
    end

    create_table :viewings do |t|
      t.column :id, :int
      t.column :prop_id, :int
      t.column :outcome_id, :int
      t.column :image, :blob
      t.column :created_at, :datetime
      t.column :updated_at, :datetime
    end    
  end
  
  def self.down
    drop_table :props
    drop_table :outcomes
    drop_table :viewings
  end
end
