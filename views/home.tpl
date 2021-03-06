% include('header.tpl', email=email, is_admin=is_admin)
% from helpers import *    
    <div class="row">
      <h4 class="subheader text-center">Random Picks</h4>
    </div>
    <div class="panel clearfix">
      % i = 0
      % for album_id in album_art_ids:
	<a href="/album/{{ album_id[0] }}" >
	  <img src="/art/{{ album_id[0] }}" width="16.3%" href="/album/{{ album_id[0] }}" style="padding: 5px; min-width: 150px;" id="picture_{{i}}">
	</a>
	% i += 1
      % end
    </div>

    <div class="small-1 columns">
      <br>
    </div>

  <div class="large-6 columns" style="margin-left: 2em;">
    <h4 class="subheader" style="margin-bottom:1em;">Top Albums</h4>
    <table>
      <thead>
	<tr>
	  <th>Album</th>
	  <th>Artist</th>
	  <th>Hits</th>
	</tr>
      </thead>
      <tbody>
	% for album in top_albums:
	<tr>
	  <td><a href="/album/{{album[0]}}">{{ album[1].title() }}</a></td>
	  <td><a href="/artist/{{ get_artist_id(album[2]) }}">{{ album[2].title() }}</a></td>
	  <td>{{ album[3] }}</td>
	</tr>
	% end
      </tbody>
    </table>
  </div>

  <div class="small-4 columns" style="margin-right: -5em;">
    <h4 class="subheader" style="margin-bottom:1em;">New additions</h4>
    <table>
      <thead>
	<tr>
	  <th>Album</th>
	  <th>Artist</th>
	</tr>
      </thead>
      <tbody>
	% for album in recent_albums:
	<tr>
	  <td><a href="/album/{{album[2]}}">{{ album[0].title() }}</a></td>
	  <td><a href="/artist/{{ get_artist_id(album[1]) }}">{{ album[1].title() }}</a></td>
	</tr>
	% end
      </tbody>
    </table>
  </div>

    <script src="/static/jquery.js"></script>
    <script src="/static/foundation.min.js"></script>

    <script>

      for(var i = 0; i < 6; i++) {
	var picture = document.getElementById("picture_" + i);
	picture.style.height = picture.clientWidth;
      }

      window.onresize=function() {
	for(var i = 0; i < 6; i++) {
	    var picture = document.getElementById("picture_" + i);
	    picture.style.height = picture.clientWidth;
        }
      };

    </script>

    <script>$(document).foundation();</script>
    


  </body>
</html>
