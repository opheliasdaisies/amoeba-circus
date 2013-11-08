class CreateAmoebas < ActiveRecord::Migration
  def change
    create_table :amoebas do |t|
      t.string :name
      t.string :talent
      t.integer :generation
      t.integer :act_id

      t.timestamps
    end
  end
end
