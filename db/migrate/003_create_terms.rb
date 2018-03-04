class CreateTerms < ActiveRecord::Migration
  def self.up
    create_table :terms do |t|
      t.string :title
      t.string :definition
      t.string :origin
      t.text :comment
    end
  end
  def self.down
    drop_table :terms
  end
end
