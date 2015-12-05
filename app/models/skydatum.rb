class Skydatum < ActiveRecord::Base
  attr_accessible :classification, :description, :genre, :name, :programmeref, :subgenre, :synopsis, :tags, :search_string, :picture_url


  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|


  		unless row["tags"].nil? 
  		 row["tags"].gsub!("_", " ")
  		end
  		unless row["synopsis"].nil? 
  			row["synopsis"].gsub!("_", " ")
  		end
  		unless row["classification"].nil?
  		 row["classification"].gsub!("_", " ")
  		end

      new_picture_url = "/thimage/" + row["programmeref"] + ".jpeg"

  	  new_search_string = [row["tags"], row["subgenre"], row["name"], row["synopsis"], row["description"] ].join(' ')
  	
  		Skydatum.create(name: row["name"], programmeref: row["programmeref"], genre: row["genre"], subgenre: row["subgenre"],synopsis: row["synopsis"], tags: row["tags"], description: row["description"], search_string: new_search_string, classification: row["classification"], picture_url: new_picture_url)
  	end
  	
  end


end
