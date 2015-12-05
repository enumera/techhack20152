class CreateSkydata < ActiveRecord::Migration
  def change
    create_table :skydata do |t|
      t.string :programmeref
      t.string :name
      t.string :description
      t.string :genre
      t.string :subgenre
      t.string :tags
      t.string :synopsis
      t.string :classification

      t.timestamps
    end
  end
end
