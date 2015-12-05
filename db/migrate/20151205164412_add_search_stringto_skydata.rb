class AddSearchStringtoSkydata < ActiveRecord::Migration
  def change

  	add_column :skydata, :search_string, :text 

  end
end
