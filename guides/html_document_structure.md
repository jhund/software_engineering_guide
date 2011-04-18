Jo Hund's Guide for HTML Document Structure
===========================================

This guide applies to **HTML Document Structure**. It is part of Jo Hund's
[Software Engineering Guide](http://github.com/jhund/software_engineering_guide).


This guide is heavily inspired by OOCSS.

Basic principles:

1. Separate structure from skin
2. Separate container from content

Separation of concerns, baby! Provides degrees of freedom where required without introducing bad
coupling where changing one thing has an unintended effect somewhere else.

These principles are implemented in the following ways:

* Use modules to organize pieces of content. The outer div of each module provides structure, the
  inner div of each module provides skin. This allows re-skinning of a module without affecting the
  overall layout (e.g. via borders or margin that mess with the box model).
* Avoid coupling between the container and the content. The content takes up all the available room
  in the container, however no CSS rules reach from the container into the content.
  
Page Template
-------------

    <div class="page">
      <div class="head"><!-- Head --></div>
      <div class="body"><!-- Body -->
        <div class="leftCol"><!-- Left Column (optional region) --></div>
        <div class="rightCol"><!-- Right Column (optional region) --></div>
        <div class="main"><!-- Main Content --></div>
      </div>
      <div class="foot"><!-- Foot --></div>
    </div>

* use classes rather than ids for styling (does not apply to js. You can use ids, just don't use
  them for styling.). The reason for this is better management of CSS specificity.
* always use same page structure so that everything becomes portable.

Module Template
---------------

All containers have double wrapped divs. The outer div is structure, the inner div is skin.

* All visual styles are applied to the inner div (border, padding, margin, background).
* The outer div can have margin to manage layout and interaction with other containers

Below is a sample module markup:

    <div class="mod">
      <div class="inner">
        <div class="hd">head</div>
        <div class="bd">body</div>
        <div class="ft">foot</div>
      </div>
    </div>


General Margin Rules
--------------------

Margin Collapse is an important concept that needs to be considered here. Summary: Any number of
margins that touch are being collapsed, using the largest individual margin, applied to the
outermost possible box that participates in the collapse. This is limited to:

* block elements
* that participate in regular flow
* top and bottom margins only

[More Info](http://www.howtocreate.co.uk/tutorials/css/margincollapsing)

So for general content margins applied to block elements like h1, h2, h3, p, ul, ol, table, etc.:

* define top and bottom margins, symmetrical for non-headings
* wider top for headings
* remove top margin from headings if they are first child (*:first-child)
* DON'T remove bottom margin from last child (the :last-child selector is not widely supported)
