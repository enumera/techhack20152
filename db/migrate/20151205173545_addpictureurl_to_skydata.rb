class AddpictureurlToSkydata < ActiveRecord::Migration
  def change
  	add_column :skydata, :picture_url, :text
  end
end
