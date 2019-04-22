class CreateKeywordData < ActiveRecord::Migration
  def change
    create_table :keyword_data do |t|
      t.integer :data
      t.integer :keyword_id
      t.datetime :collected_at

      t.timestamps
    end
  end
end
