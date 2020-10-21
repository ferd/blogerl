{# base template. Name 'base.tpl' reserved. #}<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link rel="shortcut icon" href="{{ url.img }}favicon.ico" type="image/x-icon"/>
    <title>Blogerl Demo -> {% block title %}{{ meta.title }}{% endblock %}</title>
    <link rel="stylesheet" href="{{ url.css }}screen.css" media="screen, projection" />
    <link href="{{ url.base }}feed.rss" type="application/rss+xml" rel="alternate" title="blog newsfeed" />
  </head>

  <body>
    <header>
	  <h1><a href="{{ url.base }}" title="home">Blogerl Demo</a></h1>
    </header>
    
    <article>
        {% block date %}
            <span class="date">{{ meta.date }}</span>
        {% endblock %}
        {% block content %}
        {% endblock %}
    </article>
  
    <footer>
	  <div class="contact">
	    <ul>
          <li><a href="mailto:mononcqc+blogerl@gmail.com">Fred T-H</a></li>
          <li><a href="http://twitter.com/mononcqc/">twitter</a></li>
          <li><a href="http://learnyousomeerlang.com">Learn You Some Erlang</a></li>
	    </ul>
	  </div>
    </footer>
  </body>
</html>

