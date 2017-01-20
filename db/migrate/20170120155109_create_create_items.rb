class CreateCreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.timestamps null: false
    end
  end
end
