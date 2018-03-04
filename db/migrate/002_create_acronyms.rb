class CreateAcronyms < ActiveRecord::Migration
  def change
    create_table :acronyms do |t|
      t.string :title
      t.string :definition
      t.string :origin
      t.text :comment
    end
  end
end
