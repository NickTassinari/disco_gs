class ReleaseFacade
  def self.release_by_id(release_id)
    json = DiscogsService.release_by_id(release_id)
    Release.new(json)
    end
end