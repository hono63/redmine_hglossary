class CreateAcronyms < ActiveRecord::Migration
  def self.up
    create_table :acronyms do |t|
      t.string :title
      t.string :definition
      t.string :origin
    end
  end
  def self.down
    drop_table :acronyms
  end
end
