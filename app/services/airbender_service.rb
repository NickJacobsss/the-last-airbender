class AirbenderService

  def self.all_characters(nation)
    response = connection.get("/api/v1/characters?affiliation=#{nation}")
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end

end
