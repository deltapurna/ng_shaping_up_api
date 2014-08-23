class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :full
      t.string :thumb

      t.timestamps
    end
  end
end
