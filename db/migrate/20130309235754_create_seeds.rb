class CreateSeeds < ActiveRecord::Migration
  def change
    create_table :seeds do |t|
      t.string :name
      t.string :source
      t.string :sowing_time
      t.string :species

      t.timestamps
    end
  end
end
