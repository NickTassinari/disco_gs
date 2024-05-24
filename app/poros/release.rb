class Release 
  attr_reader :id,
              :title,
              :year

  def initialize(data)
    @id = data[:id]
    @year = data[:year]

  end
end