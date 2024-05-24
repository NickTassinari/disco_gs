require 'rails_helper'

RSpec.describe ReleaseFacade do 
  let(:release) { ReleaseFacade.release_by_id(249505) }

  it 'creates release poro', :vcr do 
    expect(release).to be_a(Release)
  end
end