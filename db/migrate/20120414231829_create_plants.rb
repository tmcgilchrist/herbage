class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.string :common_names
      t.string :origin
      t.string :dimensions
      t.string :cultural_conditions
      t.string :flowering_season
      t.string :colour
      t.string :growth_rate
      t.string :foliage_colour
      t.string :potential_use
      t.string :potential_style

      t.text :comments_care
      t.text :description

      t.timestamps
    end
  end
end
