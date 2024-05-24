require 'rails_helper'

RSpec.describe DiscogsService do 
  let(:release) { DiscogsService.release_by_id(249504) }

  it 'establishes connection for releases by id', :vcr do 
    expect(release).to be_a(Hash)
    expect(release[:artists]).to be_an(Array)
    expect(release[:artists][0][:name]).to eq("Rick Astley")
  end
end