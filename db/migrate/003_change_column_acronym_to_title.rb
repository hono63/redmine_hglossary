class ChangeColumnAcronymToTitle< ActiveRecord::Migration
  def change
    rename_column :acronyms, :acronym, :title
  end
end