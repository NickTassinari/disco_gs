class ArtistFacade
  def self.artist_by_id(artist_id)
    json = DiscogsService.artist_by_id(artist_id)
    Artist.new(json)
  end
end