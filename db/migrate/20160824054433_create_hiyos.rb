class CreateHiyos < ActiveRecord::Migration
  def change
    create_table :hiyos do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
