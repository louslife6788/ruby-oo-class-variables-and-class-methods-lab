class Song 
    attr_accessor :artist, :genre, :name
    @@count = 0
    @@genres = []
    @@artists = []


    def initialize(name, artist, genre)
        @@count +=1
        @name = name 
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        

    end

    def self.count
        @@count
    end

    def self.genres
        genre_list = []
        @@genres.each do |gen| 
             if not genre_list.include?(gen) 
               genre_list << gen 
             end
            end
             genre_list
    end
    
   
    
    def self.artists
        artist_list = []
        @@artists.each {|var| !artist_list.include?(var)? artist_list << var : nil }
        artist_list
    
    end

    def self.genre_count
        tot_gen = {}
        @@genres.each do |var|
            if tot_gen.include?(var)
                tot_gen[var]+=1 
            else 
                tot_gen[var] = 1
            end
        end
        tot_gen
    end
            

   



    def self.artist_count
        tot_artist = {}
        @@artists.each {|var| tot_artist.include?(var)?  tot_artist[var]+= 1 : tot_artist[var] = 1}
        tot_artist

    end
end