<html>
  <head>
    <title>Sign up : Antisocial Streamer</title>
    <link href="/static/foundation.min.css" rel="stylesheet" type="text/css">
  </head>
  <body>


    <script type="text/javascript">

      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-49489019-1']);
      _gaq.push(['_trackPageview']);
      
      (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
      
    </script>

    <div class="fixed">
    <nav class="top-bar" data-topbar>
      <ul class="title-area">
	<li class="name">
	  <h1><a href="/login">Antisocial Streamer</a></h1>
	</li>

      </ul>
      
      <section class="top-bar-section">
	<!-- Right Nav Section -->
	<ul class="right">
	  <li class="active"><a href="/login">Log in</a></li>
	</ul>
	

	<!-- Left Nav Section -->
	<ul class="left">
	  
	</ul>
      </section>
    </nav>
    </div>

    <div class="text-center">
      <div class="show-for-large-up" style="height:100px"></div>
      <form action="/signup" method="post">
        <div class="row">
          <div class="small-12 medium-4 columns medium-offset-4 radius panel">
            <h1>Antisocial Streamer</h1>
            <fieldset>
              <legend>Sign up</legend>
              <input type="text" name="email" placeholder="Email"/>
              <input type="password" name="password" placeholder="Password"/>
	      <input type="password" name="confirm_password" placeholder="Confirm password"/>
              <button type="submit" class="small button">Signup</button>
	      % if error == "dup":
	      <div data-alert class="alert-box alert">
                A user already exists with this email.
              </div>
	      % end
	      % if error == "mismatch":
	      <div data-alert class="alert-box alert">
                Passwords don't match.
              </div>
	      % end
	      % if error == "invalid":
	      <div data-alert class="alert-box alert">
		Please enter a valid email.
	      </div>
	      % end
            </fieldset>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
