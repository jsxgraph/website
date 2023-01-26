---
layout: post
title: Release of 1.5.0
subtitle: Major new release
date: 2024-01-27T07:00:00+00:00
categories:
  - Releases
---

Dear friends of JSXGraph,

We are happy to be able to announce the release of JSXGraph v1.5.0. 

With this release, JSXGraph got a major face lift: Github user #sritchie ported the JSXGraph
source code from AMD to ES6 imports. This will make JSXGraph ready for the future!
What does these changes mean for users of JSXGraph? Hopefully nothing, beside that
JSXGraph is now running again in various environments like nodejs and as a webworker.
See below for the various possibilities how to include JSXGraph in your project.

### API change in JSXCompressor. 
    Old: `JXG.decompress` New: `JSXCompressor.default.decompress`

### New attributes `majorTickEndings`, `ignoreInfiniteTickEndings`

### New math class Mat.Heap

### New board attribute `browserPan`: allows to scroll web page by swiping in JSXGraph board

### New element attribute `shadow`

Individual shadows for each stroke element (in SVG) are possible now

### New events for keyboad handling:
    - keymove for board
    - keydrag for elements

### New board attribute `fullscreen{ scale: 0.85 }`

### New board attribute `logging`: enables logs of user activity

### New attribute `transitionProperties`: 

Enables more flexible transitions and even animations

### Further improvements

- Bounding box is now stable during repeated orientation changes 
- New attributes `distanceX` and `distanceY` for `infobox` element
- New turtle methods: `getPenColor`, `getHighlightPenColor`, `getPenSize`
- Improved shadowDOM support
- Improved browserless support
- Click on slider triggers 'drag' event
- Add dependence on elements when creating JessieCode function
- startAnimation: allow functions as parameters
- Ecosystem overhauled: no dependency on the `canvas` package anymore
- New point faces `|` ('divide') and `-` ('minus')
- Some speed improvements

Enjoy and thanks a lot in advance,

Alfred


## How to include JSXGraph

In the following the various possibilities how to include JSXGraph are described.

1) If JSXGraph is included into the web page with the good old `<script  src=".../jsxgraphcore.js">`, 
*nothing* changes. Here is a small example:

```{.html}
<!DOCTYPE html>
<html>
<head>
    <title>JSXGraph</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="./jsxgraph.css" />
    <script type="text/javascript" src="path-to/jsxgraphcore.js"></script>
</head>
<body>
<div id="jxgbox" class="jxgbox" style="width:600px; height:600px;"> </div>
<script>    import JXG from 'path-to-src/index.js';
    var board = JXG.JSXGraph.initBoard('jxgbox', { 
        boundingbox: [-5, 5, 5, -5], axis:true
    });
    var curve = board.create('functiongraph', ['ln(x']);
</script>
</body>
```

JSXGraph should be backwards compatible at least down to IE 10.

2) If JSXGraph is included as __AMD module__ there is a change: JSXGraph is now exported as *unnamed module*.
This allows e.g. to patch the JSXGraph STACK plug-in without changing the source code.
Here is an example. 

- The hosting HTML file:

```{.html}
<body>
    <h1>Use AMD / RequireJS</h1>
    <script data-main="./amdapp" src="require.js"></script>
    <div id="jxgbox" class="jxgbox" style="width:500px; height:500px"></div>
</body>
```

- The AMD module file `amdapp.js`:

```{.javascript}
requirejs(['path-to/jsxgraphcore'], function (JXG) {
    var board = JXG.JSXGraph.initBoard('jxgbox', 
            {boundingbox: [-5, 5, 5, -5], axis: true });
    var curve = board.create('functiongraph', ['ln(x']);
});
```

3) Using CommonJS __`import`__.

```{.javascript}
<div id="jxgbox" class="jxgbox" style="width:600px; height:600px;"> </div>
<script type="module">
    import JXG from 'path-to/jsxgraphcore.js';

    const board = JXG.JSXGraph.initBoard('jxgbox', { 
        boundingbox: [-5, 5, 5, -5], axis:true
    });
    var curve = board.create('functiongraph', ['ln(x']);
</script>
```

4) Using ES6 __`import`__.

```{.javascript}
<div id="jxgbox" class="jxgbox" style="width:600px; height:600px;"> </div>
<script type="module">
    import JXG from 'path-to/jsxgraphcore.mjs';

    const board = JXG.JSXGraph.initBoard('jxgbox', { 
        boundingbox: [-5, 5, 5, -5], axis:true
    });
    var curve = board.create('functiongraph', ['ln(x']);
</script>
```


5) Running JSXGraph in **nodejs**. With this release, it is (again) possible to run
JSXGraph on server side using nodejs. 
Here is an example that converts a JSXGraph construction into a png file on server side:

```{.javascript}
import JXG from 'path-to/jsxgraphcore.js';
import fs from 'fs';

JXG.Options.text.display = 'internal';
var board = JXG.JSXGraph.initBoard("jxgbox", {
    boundingbox: [-5, 5, 5, -5],
    renderer: 'canvas',
    axis: true
})
var p = board.create('point', [1,1]);
var c = board.create('circle', [[0, 0], 2.5], {fillColor: 'yellow', fillOpacity: 0.3});
board.update();
if (JXG.supportsCanvas()) {
    // Print data url
    console.log(board.renderer.canvasRoot.toDataURL())
    // Save to file "out.png"
    var out = fs.createWriteStream('./out.png'),
        stream = board.renderer.canvasRoot.createPNGStream()
    stream.on('data', function (chunk) {
        out.write(chunk);
    })
    stream.on('end', function () {
        console.log('saved "out.png"');
    });
}
```

Run it on nodejs with `nodejs example.js`

6) JSXGraph can be included as __npm package__:

First install the npm package `jsxgraph`:

```.bash
# Official release:
npm install jsxgraph 

# In case there is a release candidate:
npm install jsxgraph@next
```

Use JSXGraph in your JavaScript node project, e.g. `example.js`:

```.javascript
// Run JSXGraph on node:
import JXG from 'jsxgraph';
console.log('version', JXG.version);
console.log("JXG.Math:", JXG.Math.gcd(9, 24));
console.log("Node", JXG.isNode());
var board = JXG.JSXGraph.initBoard("jxgbox", {
    boundingbox: [-5, 5, 5, -5],
    renderer: 'no',
    axis: true
});
var p = board.create('point', [1,1]);
console.log("Point:", p.X(), p.Y());
```

Run it on nodejs with `nodejs example.js`

7) Run JSXGraph in a __webworker__:
Here is a simple example which computes the gcd of two numbers with JSXGraph. First comes the HTML part:

```{.html}
<script>
    if (window.Worker) {
        const myWorker = new Worker("worker.js");

        const butt = document.querySelector('#startButton');
        const output = document.querySelector('#output');
        butt.onclick = function() {
            myWorker.postMessage([6, 15]);
            myWorker.onmessage = (e) => {
                output.value = e.data;
                console.log('Message received from worker'{.javascript caption="Webworker JavaScript-Datei `worker.js`"});
            }
        };
    }
</script>
```

The webworker part `worker.js` looks like this:

```{.javascript}
importScripts('path-to/jsxgraphcore.js');
console.log("I'm a web worker");
onmessage = (e) => {
    console.log('self', self);
    console.log('Message received from main script');
    const txt = `Result: ${JXG.version} \n gcd=${JXG.Math.gcd(e.data[0], e.data[1])}`;
    console.log('Posting message back to main script');
    postMessage(txt);
};
```

8) ES6 __`import`__ of the source code. This is interesting for JSXGraph developers and if you do your
own granular packaging of JSXGraph modules.

However, this import is not compatible to the previous impoirt of AMD modules. Please, get in contact with the
developers if you experience incompatibilities.

```.javascript
<div id="jxgbox" class="jxgbox" style="width: 600px; height: 600px;"></div>
<script type="module">
    import JXG from 'path-to-src/index.js';

    const board = JXG.JSXGraph.initBoard('jxgbox', { 
        boundingbox: [-5, 5, 5, -5], axis:true
    });

    let relation = board.jc.snippet("ln(x)", true, 'x');
    let curve = board.create('functiongraph', [relation]);
    let integral = board.create('integral', [[2, 4], curve]); 
</script>
```
