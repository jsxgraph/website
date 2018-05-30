---
layout: post
title: Release of 0.99.7
subtitle: Major new release
date: 2018-05-29T09:00:00+00:00
categories:
  - Releases
---
Here it is:
The much awaited version **0.99.7** of JSXGraph has been released!
There are a few new elements and many new features. We are happy that we received many
requests for new features from active JSXGraph users.

### New elements:

* [comb](//jsxgraph.org/docs/symbols/Comb.html){:target="_blank"}
* [cardinalspline](jsxgraph.org/docs/symbols/Cardinalspline.html){:target="_blank"}
* [derivative](//jsxgraph.org/docs/symbols/Derivative.html){:target="_blank"}
* [mirrorelement](jsxgraph.org/docs/symbols/Mirrorelement.html){:target="_blank"}
* [reflection](//jsxgraph.org/docs/symbols/Reflection.html){:target="_blank"}

## Improvements and bug fixes

* In Chrome and Edge on Windows point events are used.
* New default values for pinch / zoom: `shift+wheel` is set to true by defualt now for zoom
* JSXGraph is now compatible to [require.js](//requirejs.org/).  This allows a seamless integration
into learning management system [moodle](//moodle.org){:target="_blank"} via the
[JSXGraph](https://github.com/jsxgraph/moodle-jsxgraph-plugin) filter.
* Improved output from [Dump.toJavaScript()](https://jsxgraph.org/docs/symbols/JXG.Dump.html#.toJavaScript)
* Polygon reflection now creates vertex names `A'`, `B'`, ...
* Enable transformation "rotate" of type `[angle, [x,y]]`
* Improved support for MathJax
* MediaWiki plug-in works again
* The events `hit` and `mousehit` work again.
* The attribute `hasInnerPoints` is available for all arc types: arc, sector, angle
* New curve attributes `recursionDepthLow` and `recursionDepthHigh` allow user controlled plot quality, see the discussion at []()
* The inequality element takes now also the functiongraph element as input
* Screenshot button: [https://groups.google.com/forum/#!topic/jsxgraph/t0eM5DiuGws]


We thank all contributors which supplied patches, bug reports and suggestions for improvements.

For a full list of all changes see the [CHANGELOG](https://github.com/jsxgraph/jsxgraph/blob/master/CHANGELOG.md).

Enjoy, Alfred
