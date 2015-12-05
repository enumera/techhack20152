class Skydatum < ActiveRecord::Base
  attr_accessible :classification, :description, :genre, :name, :programmeref, :subgenre, :synopsis, :tags


  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
  	
  		Skydatum.create(name: row["name"], programmeref: row["programmeref"], genre: row["genre"], subgenre: row["subgenre"],synopsis: row["synopsis"], tags: row["tags"], description: row["description"])
  	end
  	
  end


end
