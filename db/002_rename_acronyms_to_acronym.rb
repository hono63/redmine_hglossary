# ↓参照。redmineフォルダで作成したやつをコピーしてきた。
# http://pirosikick.hateblo.jp/entry/2012/11/14/001329

# ↓プラグインのmigration実行コマンド。 参考：http://redmine.jp/tech_note/plugins/developer/quickref/db-migration/
# rake redmine:plugins:migrate RAILS_ENV=development

# ↓rollbackしたいとき。 参考：http://kusu.way-nifty.com/blog/2009/09/rake-dbmigrate_.html
# rake redmine:plugins:migrate RAILS_ENV=development NAME=hglossary VERSION=002

class RenameAcronymsToAcronym < ActiveRecord::Migration
  def self.up
    rename_table :acronyms, :acronym
  end
  def self.down
    rename_table :acronym, :acronyms
  end
end
