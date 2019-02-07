class MusicLibraryController

def initialize(path = "./db/mp3s")

  importer=MusicImporter.new(path)

  @songs=importer.import
#@songs=[]
end
def list_artists

@artists=Artist.all
  #ar=@songs
#  @songs.uniq! {|a| a.artist.name}
#@songs.sort! {|a,b| a.artist.name.downcase <=> b.artist.name.downcase}
#i=0
#@songs.each do |a|
# puts "#{i+1}. #{a.artist.name}"
 #i+=1
 #end
 @artists.uniq! {|a| a.name}
 @artists.sort! {|a,b| a.name.downcase <=> b.name.downcase}
 i=0
 @artists.each do |a|
  puts "#{i+1}. #{a.name}"
  i+=1
  end
 end


def list_songs_by_artist
end
 def list_genres

 @genres=Genre.all
   #ar=@songs
 #  @songs.uniq! {|a| a.artist.name}
 #@songs.sort! {|a,b| a.artist.name.downcase <=> b.artist.name.downcase}
 #i=0
 #@songs.each do |a|
 # puts "#{i+1}. #{a.artist.name}"
  #i+=1
  #end
  @genres.uniq! {|a| a.name}
  @genres.sort! {|a,b| a.name.downcase <=> b.name.downcase}
  i=0
  @genres.each do |a|
   puts "#{i+1}. #{a.name}"
   i+=1
   end
  end

 def list_songs

   #ar=@songs
 @songs.sort! {|a,b| a.name.downcase <=> b.name.downcase}
 i=0
 @songs.each do |a|
  puts "#{i+1}. #{a.artist.name} - #{a.name} - #{a.genre.name}"
  i+=1
  end
  end

def call
  input=""
  while input!="exit"
  puts "Welcome to your music library!"
puts "To list all of your songs, enter 'list songs'."
puts "To list all of the artists in your library, enter 'list artists'."
puts "To list all of the genres in your library, enter 'list genres'."
puts "To list all of the songs by a particular artist, enter 'list artist'."
puts "To list all of the songs of a particular genre, enter 'list genre'."
puts "To play a song, enter 'play song'."
puts "To quit, type 'exit'."
puts "What would you like to do?"

    input=gets.strip
case input
when "list songs"
  list_songs
when "list artists"
  list_artists
when "list genres"
  genres
when "list artist"
  list artist
when "list genre"
  list genre
when "play song"
  play song
end
end
end
end