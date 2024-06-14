require 'rails_helper'

RSpec.describe Artist do 
  let(:artist) { ArtistFacade.artist_by_id(108713)}

  it 'has attributes', :vcr do 
    expect(artist.id).to eq(108713)
    expect(artist.name).to eq("Nickelback")
    expect(artist.bio).to include("Alternative rock band from Hanna, Alberta (Canada).\r\n\r\nThe band was formed in 1995. The band having sold almost 50 million albums worldwide, ranking as the 11th best selling music act of the 2000s, and is the 2nd best selling foreign act in the U.S. behind The Beatles for the 2000's.")
    expect(artist.website).to eq("http://www.nickelback.com/")
    expect(artist.members).to be_a(Array)
    expect(artist.members[0][:name]).to eq("Chad Kroeger")
    expect(artist.members[0][:active]).to eq(true)
  end

end