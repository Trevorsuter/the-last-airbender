class SearchController < ApplicationController

  def index
    params[:nation].gsub!("_", "+")
    connection = Faraday.new("https://last-airbender-api.herokuapp.com")
    total_characters_response = connection.get("api/v1/characters?affiliation=#{params[:nation]}&perPage=200")
    character_details_response = connection.get("api/v1/characters?affiliation=#{params[:nation]}&perPage=25")
    @total_characters_data = JSON.parse(total_characters_response.body, symbolize_names: true)
    @characters = JSON.parse(character_details_response.body, symbolize_names: true)
  end
end