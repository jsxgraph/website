---
layout: page
title: Download
subtitle: Latest version 1.00.0
---

**JSXGraph** needs two files:

1. Link the file `jsxgraphcore.js` into your web pages. This file has been minified using the UglifyJS compressor. `jsxgraphcore.js` contains the complete source code of JSXGraph bundled in one file. All objects of JSXGraph use the namespace `JXG`. Beside `JXG` there are no global variables.
2. Include the css commands from `jsxgraph.css` into the web pages. It can be downloaded from <https://jsxgraph.org/distrib/jsxgraph.css> or from <https://github.com/jsxgraph/jsxgraph>.

### CDN

**UPDATE 2020-03-28:** v1.00.0 is not yet available on CDNJS, we are working to resolve this problem.

The easiest way to use JSXGraph is to link directly to the public installation available through the Content Distribution Network (CDN) **cdnjs**. Put the following code into the `<head>` block of your document:

```html
<script type="text/javascript" charset="UTF-8"
 src="//cdnjs.cloudflare.com/ajax/libs/jsxgraph/{{ site.version_number }}/jsxgraphcore.js"></script>
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/jsxgraph/{{ site.version_number }}/jsxgraph.css" />
```

The latest JSXGraph version hosted on **cdnjs** is:

* <https://cdnjs.cloudflare.com/ajax/libs/jsxgraph/{{ site.version_number }}/jsxgraphcore.js>
* <https://cdnjs.cloudflare.com/ajax/libs/jsxgraph/{{ site.version_number }}/jsxgraph.css>


### JSXGraph site
Download the latest version {{ site.version_number }} from the [JSXGraph home page](https://jsxgraph.org/distrib/jsxgraphcore.js)


### Plug-ins
* [JSXGraph plug-in for Moodle](https://github.com/jsxgraph/moodle-jsxgraph-plugin)
* [JSXGraph MediaWiki extension](https://www.mediawiki.org/wiki/Extension:JSXGraph){:target="_blank"}
* [JSXGraph plug-in for WordPress](https://wordpress.org/extend/plugins/jsxgraph){:target="_blank"}
* [JSXGraph plug-in for Drupal](https://drupal.org/project/jsxgraph){:target="_blank"}
* [Online script to create JSXGraph HTML pages from GEONExT files](http://did.mat.uni-bayreuth.de/~matthias/jsxgraph/creator){:target="_blank"}

### Source code

* The JSXGraph source code is hosted on [GitHub](https://github.com/jsxgraph/jsxgraph)
* [Bug tracker](https://github.com/jsxgraph/jsxgraph/issues)
* **[JetBrains WebStorm](https://www.jetbrains.com/webstorm/)**: JetBrains supports the development of JSXGraph with free licenses under their Open Source Support Program.

### Nightly builds

The latest development version can always be downloaded/used from <https://jsxgraph.uni-bayreuth.de/~michael/jsxgraph-nightly/>.
Beware, there may be untested features (bugs)!



### Previous releases

[Here are links to older versions of JSXGraph.](https://jsxgraph.org/wp/previousreleases/)
