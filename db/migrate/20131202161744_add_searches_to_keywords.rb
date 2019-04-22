class AddSearchesToKeywords < ActiveRecord::Migration
  def change
    add_column :keywords, :searches, :integer
  end
end
