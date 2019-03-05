# README
Mockups available at **https://balsamiq.cloud/sf9962g/pcazquv**

Realtime Board link **https://realtimeboard.com/app/board/o9J_kyQv-Zs=/**


1.)Must have a Rails Backend and new requirements implemented through JavaScript.
-Login form for large screens 

Must translate the JSON responses into Javascript Model Objects using either ES6 class or constructor syntax. 

2.) Must render at least one index page (index resource - 'list of things') via JavaScript and an Active Model Serialization JSON Backend.
Units slider on hover large screens only

Must render at least one show page (show resource - 'one specific thing') via JavaScript and an Active Model Serialization JSON Backend.
Show Tip in Unit  Show 


Your Rails application must reveal at least one `has-many` relationship through JSON that is then rendered to the page.
Must use your Rails application to render a form for creating a resource that is submitted dynamically through JavaScript.
New Tip on user show 

At least one of the JS Model Objects must have a method on the prototype.


From Dalia Sawaya to Everyone:  01:20 PM
function Song(songJson) {
  this.userId = songJson.user_id
  this.id = songJson.id
  this.name = songJson.name
  this.artist = songJson.artist
  this.songVibes = songJson.song_vibes
  this.vibes = songJson.vibes
}
Song.prototype.formatSong = function() {
  return "<li>" + "<a href=\"/users/" + this.userId + "/songs/" + this.id + "\">" + this.name + "</a>" + " - " + this.artist + "</li>"
}
function listSongs () {
  $.getJSON("/songs", function(songs){
    $.each(songs, function(index, song) {
      var the_song = new Song(song)
      $("#song_list").append(the_song.formatSong())
    })
  })
}
class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :user_id, :vibes, :song_vibes

  has_many :song_vibes
  has_many :vibes, through: :song_vibes

  belongs_to :user
end
https://www.youtube.com/embed/b93S2_Hc8z8
