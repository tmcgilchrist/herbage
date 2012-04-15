class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :common_names
      t.string :species
      t.string :genus
      t.string :colour

      t.string :flowering_season
      t.string :fruiting_season

      t.text :description
      t.text :care
      t.text :position
      t.text :soil

      t.timestamps
    end
  end
end
