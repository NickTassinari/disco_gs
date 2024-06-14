class Artist
  attr_reader :id,
              :name,
              :bio,
              :website,
              :members

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @bio = data[:profile]
    @website = data[:urls][0]
    @members = []

    data[:members].each do |member_data|
      @members << {
        id: member_data[:id],
        name: member_data[:name],
        active: member_data[:active]
      }
    end
  end

end