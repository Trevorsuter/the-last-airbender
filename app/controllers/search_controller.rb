class SearchController < ApplicationController

  def index
    params[:nation].gsub!("_", "+")
    connection = Faraday.new("https://last-airbender-api.herokuapp.com")
    response = connection.get("api/v1/characters?affiliation=#{params[:nation]}&perPage=200")
    @data = JSON.parse(response.body, symbolize_names: true)
  end
end