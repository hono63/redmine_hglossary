class CreateAcronyms < ActiveRecord::Migration
  def change
    create_table :acronyms do |t|
      t.string :acronym
      t.string :definition
      t.string :origin
    end
  end
end
