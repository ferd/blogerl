## Blogerl ##

Blogerl is a minimalist blog engine written in Erlang. It generates only flat HTML files with an RSS entry and an index, nothing more.

### Building & Compiling ###

You need to have Erlang installed:

```shell
	./rebar3 release
```

And the Blogerl release is compiled. Try to compile the blogerl demo blog:

```shell
	cd ../demo-blog
	./run.sh
```

And open the files in demo-blog/compiled/ a browser.

### Config File ###

The configuration file should be named `conf.cfg` and be placed in the base directory of the blog files. It contains instructions on where to find everything else:

```erlang
	%%% template compiling config
	%% where the blog source (templates) are
	{sourcedir, "src/"}.
	%% where the compiled blog should go
	{outdir, "compiled/"}. 
	%% information on the site index (main page)
	{index, [{files, "index.cfg"}, {tpl, "index.tpl"}, {out, "index.html"}]}.
	%% regex filters indicating what files contain markdown code
	{markdown, [".md.tpl"]}.
	%% RSS options
	%% note: RSS uses the <article> tag from HTML5 to find the entry's content
	%% It must be part of your template in order to be used.
	{rss, [{tpl, "rss.tpl"}, {out, "feed.rss"}, {num_entries, 5}]}.
	
	%%% config available within the templates
	%{vars,
	% [{url, [{base, "/"},
	%         {img, "/static/img/"},
	%         {js, "/static/js/"},
	%         {css, "/static/css/"}]}]}.
	%% Without a web server, just to test, replace the path
	{vars,
	[{url, [{base, "file:///home/.../blogerl/demo-blog/compiled/"},
			{img, "file:///home/.../blogerl/demo-blog/compiled/static/img/"},
			{js, "file:///home/.../blogerl/demo-blog/compiled/static/js/"},
			{css, "file:///home/..,/blogerl/demo-blog/compiled/static/css/"}]}]}.
```

### The Blog Index ###

The blog index contains tuples with information relative to the contents of the site. The date format here is the one standard in RSS documents. The entries will be ordered in descending order by date automatically (using the format YYYY-MM-DD).

```erlang
	{"Tue, 13 Jul 2010 00:00:00 EDT", "Hello, World", "hello.tpl"}.
	{"Sun, 10 Jul 2011 00:00:00 EST", "Markdown Test", "markdown.md.tpl"}.
	{"Wed, 14 Jul 2010 00:00:00 EST", "Second article", "second.tpl"}.
```

You can take a look to the matching `*.tpl` files in `demo-blog` to see how they work

### Markdown ###

Files that are scanned as requiring markdown and have markdown code between `{% markdown %}` and `{% endmarkdown %}` tags (they can not be nested) will have all the content in between converted by a markdown library. The rest will be left as is.

### Authors ###

- [Fred Hebert](http://ferd.ca)
