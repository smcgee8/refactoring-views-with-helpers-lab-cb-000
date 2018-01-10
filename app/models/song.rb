class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    begin
      self.artist.name
    rescue nil
    end
  end

  def artist_name=(name)
    self.artist = Artist.find_by(name: name)
  end
end
