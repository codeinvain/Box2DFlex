=== Box2DFlex ===
Contributors: codeinvain
Tags: box2d,flex,physics,graphics
Supported flash Version: 10.*
Supported Flex Version: 4.*
Implemented 	
Box2DFlex allows you to easely integrate box2d into flex.

== Credits ==
physics engine :
box2d as3 engine 

coplex shape mapping is thanks to the following :
shape outline extraction from sakri http://www.sakri.net/blog/2009/04/13/extract-shape-outline-points-from-bitmapdata/
concave shapes using polygons http://makc.coverthesky.com/FlashFX/ffx.php?id=18

== Description ==

Box2DFlex framework allows you easely integrate box2d into flex framework using mxml, obfuscating or encapsulating box2d engine is *not* the goal.
The framewok helps easy integration with flex and exposes box2d world for advanced manipulation.

* extends SkinnableContainer uses flex component lifecycle model
* uses regular MXML and AS flex componentes 
* allows multiple worlds side by side

== Demo Getting Started ==

1. download the sourcecode
2. inport the two  projects into flash builder 4
3. compile 
4. see eamples in Box2Demos project

== Getting Started building your own b2d world ==
1. download the framework
2. create a new project
3. add refrence to  <framework dir>/Box2dFlexLib/bin/Box2DFlexLib.swc
4. in your MXML add a new SkinnablePhysicsContainer 
5. set the container's yGravity property to 10 and autoStartPhysicsEngine to true (yGravity="10" autoStartPhysicsEngine="true")
6. place a button inside SkinnablePhysicsContainer and set it's properties (width / height / label)
7. run the project

== License ==
box2dflex (this frameowrk) is release under MIT license
box2d (physics engine part) is released under zlib license (http://en.wikipedia.org/wiki/Zlib_License)

== Frequently Asked Questions ==

N/A
== Screenshots ==
http://www.codeinvian.com

== Changelog ==
= 0.2 =
* added support for complex shapes
= 0.1 =
* Initial release.