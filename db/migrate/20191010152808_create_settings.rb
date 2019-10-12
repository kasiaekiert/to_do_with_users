class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.references :user, foreign_key: true
      t.integer :locale

      t.timestamps
    end
  end
end
