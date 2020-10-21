{% extends "base.tpl" %}

{% block content %}
{% markdown %}
Markdown Test
-------------

### Section 1


Aliquam erat erat, semper sit amet vehicula non, fringilla vitae diam. Vivamus iaculis dui et nibh placerat imperdiet. Proin leo massa, facilisis blandit eleifend at, consequat quis leo. _Mauris vitae erat nec arcu tristique consequat. Sed nulla orci, ultricies quis tempor vitae, semper id lectus._ Curabitur vel venenatis diam. Sed congue ullamcorper rhoncus. Cras fringilla consectetur tincidunt. Quisque vulputate facilisis nibh, non pharetra urna malesuada eget. Fusce condimentum libero at erat semper quis tristique nunc hendrerit. Aliquam vulputate sollicitudin elit eu volutpat. Aliquam lorem arcu, ornare ac porttitor at, blandit sit amet mi. Phasellus cursus facilisis lectus, et consequat neque elementum nec. Suspendisse auctor mollis turpis, nec volutpat augue sagittis at. Vivamus vitae metus non tellus ultricies imperdiet et eu risus. Nunc non augue orci.

- Lorem ipsum dolor sit amet, consectetur adipiscing elit.
- Suspendisse eu nisi non metus tempus malesuada.
- Suspendisse vitae justo eu nisi accumsan volutpat.
- Nunc nec est nibh, at pellentesque neque.
- Nunc eget enim vel magna ornare rutrum vitae id ipsum.
- In ornare massa in ligula molestie bibendumr

__Aliquam lorem arcu__, ornare ac porttitor at, blandit sit amet mi. Phasellus cursus facilisis lectus, et consequat neque elementum nec. Suspendisse auctor mollis turpis, nec volutpat augue sagittis at. Vivamus vitae metus non tellus ultricies imperdiet et eu risus. Nunc non augue orci.

Aliquam mi tellus, condimentum id blandit nec, fringilla nec lectus. Nulla facilisi. <a href="http://example.org">Praesent eget felis dolor</a>. Pellentesque ultricies, [urna sed](http://ferd.ca) tempor dapibus, nulla lorem vestibulum justo, nec tincidunt turpis urna quis eros. Aliquam erat lectus, varius sed mollis quis, pretium sed est. Aliquam erat volutpat. Nulla porta congue neque, nec ornare lectus cursus id. Morbi eros est, fringilla id bibendum et, commodo ac nisl. Cras viverra dapibus molestie.

### Section 2 with rather longer titles to see how they do when compressed.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eleifend, lacus vitae molestie vehicula, augue lorem blandit lorem, euismod dictum ipsum ipsum porttitor justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Proin mollis vulputate ante, eget molestie tellus eleifend eu. Suspendisse potenti. Nullam sapien dolor, rhoncus condimentum luctus non, tempus nec odio. Donec augue purus, fringilla vitae convallis et, pulvinar eu tellus. Nulla tristique fringilla hendrerit. Donec et orci ut orci aliquet consequat id at sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse a condimentum felis.

1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
2. Suspendisse eu nisi non metus tempus malesuada.
3. Suspendisse vitae justo eu nisi accumsan volutpat.
4. Nunc nec est nibh, at pellentesque neque.
5. Nunc eget enim vel magna ornare rutrum vitae id ipsum.
6. In ornare massa in ligula molestie bibendum.

Nulla facilisi. Aliquam sed dolor interdum leo interdum pharetra eget vitae augue. Vestibulum vitae justo eu sapien bibendum cursus ac ac lacus. Proin varius faucibus velit, non fringilla lorem tempor in. Nulla tempus ante sed leo ultrices rhoncus. Duis id tellus eget neque sagittis luctus suscipit sit amet diam. Aenean eget pretium magna. Sed elementum pharetra sodales. Maecenas at lectus dolor, sed volutpat arcu. In a sem ac lectus porttitor semper. Donec sollicitudin, est id lobortis lacinia, dui urna volutpat sapien, at sodales leo magna a velit.

    1> cd("d:/code/blogerl").
    d:/code/blogerl
    ok
    2>  make:all([load]).
    up_to_date

Some Explanatory text

    -module(blog).
    -export([main/1, run/1]).
    
    run(BlogDir) -&gt;
        main(BlogDir),
        io:format("ok~n"),
        halt(0).
    
    main(BlogDir) -&gt;
        {Src, Out, Index, Vars} = load_conf(BlogDir),
        Pages = [{D, T, sluggify(T), Txt} || {D, T, Txt} &lt;- compile_files(Index, Vars)],
        recursive_copy(Src, Out),
        save_pages(Out, Pages),
        create_index(Src, Out, Pages, Vars),
        ok.

Followed by a quick conclusion


### More tags to test

And some text followed by a blockquote:

> It's the only job I can think of where I get to be both an engineer and an artist.  There's an incredible, rigorous, technical element to it, which I like because you have to do very precise thinking.  On the other hand, it has a wildly creative side where the boundaries of imagination are the only real limitation

And tell mom I said hi.

<dl>
    <dt>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</dt>
    <dd>Sed sit amet risus ut sem elementum ultricies nec in quam.</dd>

    <dt>Praesent non quam vel enim porttitor porta sit amet a nisl.</dt>
    <dd>Fusce vitae turpis id lectus tincidunt sodales.</dd>
    <dd>Donec condimentum sem ante, ut porta eros.</dd>
</dl>

In purus elit, tincidunt non tincidunt luctus, bibendum id augue. Donec eget blandit metus. Pellentesque turpis massa, consectetur eget sodales ut, vehicula at est. Donec interdum scelerisque lobortis. Nulla et est turpis. In ornare, lorem ut venenatis rhoncus, enim magna rhoncus lectus, eget dictum turpis tortor eu nisi. Cras accumsan `fun() -&gt; X + 3 end` gravida mauris, a porta neque porttitor vel. Nunc aliquet egestas venenatis. Maecenas vel orci non purus sodales congue sit amet id orci. Sed vel aliquam elit. Mauris iaculis metus velit. Morbi eu felis et dolor consectetur facilisis.

    And
       let's               !
                       not
       forget      default
            the 
                        pre
                
                value

Nam adipiscing semper <em>erat</em>, quis faucibus tortor consectetur et. Donec sit amet metus dui, eu varius justo. Morbi vel nulla sollicitudin ante ullamcorper mattis. Aenean ut libero diam, tempor condimentum sem. Integer sit amet leo id arcu facilisis sollicitudin. Cras est lorem, feugiat eget sagittis quis, placerat vel massa. Morbi ac elit tellus. In in lectus libero. Duis tincidunt semper mauris nec pretium. Pellentesque sed dui quis lectus faucibus sollicitudin non non est.
{% endmarkdown %}
{% endblock %}
