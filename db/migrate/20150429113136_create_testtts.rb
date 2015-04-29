class CreateTesttts < ActiveRecord::Migration
  def self.up
    create_table :testtts do |t|
      t.string :name
      t.text :description
      t.integer :age
      t.float :worth
      t.boolean :is_male
      t.date :born_at
      t.timestamps
    end
  end

  def self.down
    drop_table :testtts
  end
end
