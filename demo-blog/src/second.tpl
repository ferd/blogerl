{% extends "base.tpl" %}

{% block content %}
<h2>Second Article</h2>

<h3>Section 1</h3>

<p>Aliquam erat erat, semper sit amet vehicula non, fringilla vitae diam. Vivamus iaculis dui et nibh placerat imperdiet. Proin leo massa, facilisis blandit eleifend at, consequat quis leo. <em>Mauris vitae erat nec arcu tristique consequat. Sed nulla orci, ultricies quis tempor vitae, semper id lectus.</em> Curabitur vel venenatis diam. Sed congue ullamcorper rhoncus. Cras fringilla consectetur tincidunt. Quisque vulputate facilisis nibh, non pharetra urna malesuada eget. Fusce condimentum libero at erat semper quis tristique nunc hendrerit. Aliquam vulputate sollicitudin elit eu volutpat. Aliquam lorem arcu, ornare ac porttitor at, blandit sit amet mi. Phasellus cursus facilisis lectus, et consequat neque elementum nec. Suspendisse auctor mollis turpis, nec volutpat augue sagittis at. Vivamus vitae metus non tellus ultricies imperdiet et eu risus. Nunc non augue orci.</p>

<ul>
    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
    <li>Suspendisse eu nisi non metus tempus malesuada.</li>
    <li>Suspendisse vitae justo eu nisi accumsan volutpat.</li>
    <li>Nunc nec est nibh, at pellentesque neque.</li>
    <li>Nunc eget enim vel magna ornare rutrum vitae id ipsum.</li>
    <li>In ornare massa in ligula molestie bibendum.</li>
</ul>

<p><strong>Aliquam lorem arcu</strong>, ornare ac porttitor at, blandit sit amet mi. Phasellus cursus facilisis lectus, et consequat neque elementum nec. Suspendisse auctor mollis turpis, nec volutpat augue sagittis at. Vivamus vitae metus non tellus ultricies imperdiet et eu risus. Nunc non augue orci.</p>

<p>Aliquam mi tellus, condimentum id blandit nec, fringilla nec lectus. Nulla facilisi. <a href="">Praesent eget felis dolor</a>. Pellentesque ultricies, urna sed tempor dapibus, nulla lorem vestibulum justo, nec tincidunt turpis urna quis eros. Aliquam erat lectus, varius sed mollis quis, pretium sed est. Aliquam erat volutpat. Nulla porta congue neque, nec ornare lectus cursus id. Morbi eros est, fringilla id bibendum et, commodo ac nisl. Cras viverra dapibus molestie.</p>

<h3>Section 2 with rather longer titles to see how they do when compressed.</h3>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eleifend, lacus vitae molestie vehicula, augue lorem blandit lorem, euismod dictum ipsum ipsum porttitor justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Proin mollis vulputate ante, eget molestie tellus eleifend eu. Suspendisse potenti. Nullam sapien dolor, rhoncus condimentum luctus non, tempus nec odio. Donec augue purus, fringilla vitae convallis et, pulvinar eu tellus. Nulla tristique fringilla hendrerit. Donec et orci ut orci aliquet consequat id at sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse a condimentum felis.</p>

<ol>
    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
    <li>Suspendisse eu nisi non metus tempus malesuada.</li>
    <li>Suspendisse vitae justo eu nisi accumsan volutpat.</li>
    <li>Nunc nec est nibh, at pellentesque neque.</li>
    <li>Nunc eget enim vel magna ornare rutrum vitae id ipsum.</li>
    <li>In ornare massa in ligula molestie bibendum.</li>
</ol>

<p>Nulla facilisi. Aliquam sed dolor interdum leo interdum pharetra eget vitae augue. Vestibulum vitae justo eu sapien bibendum cursus ac ac lacus. Proin varius faucibus velit, non fringilla lorem tempor in. Nulla tempus ante sed leo ultrices rhoncus. Duis id tellus eget neque sagittis luctus suscipit sit amet diam. Aenean eget pretium magna. Sed elementum pharetra sodales. Maecenas at lectus dolor, sed volutpat arcu. In a sem ac lectus porttitor semper. Donec sollicitudin, est id lobortis lacinia, dui urna volutpat sapien, at sodales leo magna a velit.</p>

<pre class="brush:eshell">
1&gt; cd("d:/code/blogerl").
d:/code/blogerl
ok
2&gt; make:all([load]).
up_to_date
</pre>

<p>Some Explanatory text</p>

<pre class="brush:erl">
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
</pre>

<p>Followed by a quick conclusion</p>


<h3>More tags to test</h3>

<p>And some text followed by a blockquote: </p>

<blockquote title="Andy Hertzfeld, about programming">
    It's the only job I can think of where I get to be both an engineer and an artist.  There's an incredible, rigorous, technical element to it, which I like because you have to do very precise thinking.  On the other hand, it has a wildly creative side where the boundaries of imagination are the only real limitation
</blockquote>

<p>And tell mom I said hi.</p>

<dl>
    <dt>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</dt>
    <dd>Sed sit amet risus ut sem elementum ultricies nec in quam.</dd>

    <dt>Praesent non quam vel enim porttitor porta sit amet a nisl.</dt>
    <dd>Fusce vitae turpis id lectus tincidunt sodales.</dd>
    <dd>Donec condimentum sem ante, ut porta eros.</dd>
</dl>

<p>In purus elit, tincidunt non tincidunt luctus, bibendum id augue. Donec eget blandit metus. Pellentesque turpis massa, consectetur eget sodales ut, vehicula at est. Donec interdum scelerisque lobortis. Nulla et est turpis. In ornare, lorem ut venenatis rhoncus, enim magna rhoncus lectus, eget dictum turpis tortor eu nisi. Cras accumsan <code>fun() -&gt; X + 3 end</code> gravida mauris, a porta neque porttitor vel. Nunc aliquet egestas venenatis. Maecenas vel orci non purus sodales congue sit amet id orci. Sed vel aliquam elit. Mauris iaculis metus velit. Morbi eu felis et dolor consectetur facilisis.</p>

<pre>And
   let's               !
                   not
   forget      default
        the 
                    pre
            
            value
</pre>

<p>Nam adipiscing semper erat, quis faucibus tortor consectetur et. Donec sit amet metus dui, eu varius justo. Morbi vel nulla sollicitudin ante ullamcorper mattis. Aenean ut libero diam, tempor condimentum sem. Integer sit amet leo id arcu facilisis sollicitudin. Cras est lorem, feugiat eget sagittis quis, placerat vel massa. Morbi ac elit tellus. In in lectus libero. Duis tincidunt semper mauris nec pretium. Pellentesque sed dui quis lectus faucibus sollicitudin non non est.</p>
{% endblock %}
