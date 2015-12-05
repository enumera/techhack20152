class HummController < ApplicationController
  
  def index
  end

  def artists
    value = HTTParty.get("https://humm-api.p.mashape.com/artists?auth=56630bd7ae8c5030388b4567&keyword=#{params[:term]}&limit=5&offset=0",
      headers:{
        "X-Mashape-Key" => "NE8V83XIbrmshGs8j32H5KG74rdGp174dC8jsnYV6eTORyZpKB",
        "Accept" => "application/json"
      }
    )
    respond_to do |format|
      format.json { render json: value.to_json }
    end
  end

  def songs
    value = HTTParty.get("https://humm-api.p.mashape.com/songs?auth=56630bd7ae8c5030388b4567&keyword=#{params[:term]}&limit=5&offset=0",
      headers:{
        "X-Mashape-Key" => "NE8V83XIbrmshGs8j32H5KG74rdGp174dC8jsnYV6eTORyZpKB",
        "Accept" => "application/json"
      }
    )
    respond_to do |format|
      format.json { render json: value.to_json }
    end
  end

  def playlists
    value = HTTParty.get("https://humm-api.p.mashape.com/playlists?auth=56630bd7ae8c5030388b4567&keyword=#{params[:term]}&limit=5&offset=0",
      headers:{
        "X-Mashape-Key" => "NE8V83XIbrmshGs8j32H5KG74rdGp174dC8jsnYV6eTORyZpKB",
        "Accept" => "application/json"
      }
    )
    respond_to do |format|
      format.json { render json: value.to_json }
    end
  end
end
