require 'rails_helper'

RSpec.describe Release do 
  let(:release) {ReleaseFacade.release_by_id(249504)}

  it 'attributes', :vcr do 
    expect(release.id).to eq(249504)
  end
end