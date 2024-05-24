class Release 
  attr_reader :id,
              :title,
              :year,
              :artist,
              :label 
            

  def initialize(data)
    @id = data[:id]
    @year = data[:year]
    @artist = data[:artists][0][:name]
    @label = data[:labels][0][:name]
    # require 'pry'; binding.pry

  end
end