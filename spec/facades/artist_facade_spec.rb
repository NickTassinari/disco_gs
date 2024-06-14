require 'rails_helper'

RSpec.describe ArtistFacade do 
  let(:artist) { ArtistFacade.artist_by_id(108713) }

  it 'creates release poro', :vcr do 
    expect(artist).to be_a(Artist)
  end
end