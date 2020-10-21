<?xml version="1.0"?>
<rss version="2.0">
  <channel>
    <title>My Blog</title>
    <link>{{ url.base }}</link>
    <description>My own blog about programming and whatnot.</description>
    <language>en-us</language>
    <pubDate>{{ latest_date }}</pubDate>
    <lastBuildDate>{{ latest_date }}</lastBuildDate>
    <ttl>60</ttl>

    {% for article in articles %}
    <item>
      <title>{{ article.title|escape }}</title>
      <link>{{ url.base }}{{ article.slug }}.html</link>
      <description>{{ article.desc }}</description>
      <pubDate>{{ article.date }}</pubDate>
      <guid>{{ url.base }}{{ article.slug }}.html</guid>
    </item>
    {% endfor %}
 
  </channel>
</rss>

