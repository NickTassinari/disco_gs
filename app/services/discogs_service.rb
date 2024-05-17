class DiscogsService
  def self.conn 
    Faraday.new(url: 'https://api.discogs.com/')
  end

  def self.release_by_id(record_id)
    response = conn.get("releases/#{record_id}")

    JSON.parse(response.body, symbolize_names: true)
  end

end 