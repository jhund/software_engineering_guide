Jo Hund's Software Engineering Guide
====================================

This is a collection of guides on various topics related to doing software engineering with Ruby
on Rails. There is some Rails specific content in here, however a lot of the guides are generally
applicable to software engineering.

I value aesthetics and consistency in code and writing. Makes it a joy to work and makes the work
more efficient. Also allows me to learn from my past mistakes (yes, Rails controller cache
directives, I'm looking at you and your finickiness irt declaration order). And it really helps
when collaborating with others.


Guides
------

* [Email](guides/email.md)
* [Git](software_engineering_guide/blob/master/guides/git.md)
* [Technical Writing in English](software_engineering_guide/blob/master/guides/technical_writing_english.md)


Workflow
--------

I use Github pages to render the rocco generated HTML files. The commands below will generate the
html output and push the pages to Github:

    cd into software_engineering_guide/guides

    git checkout master
    rocco *.rb
    cd ..
    git add *
    git commit -m "recompiled rocco html files"
    git checkout gh-pages
    git merge master
    git checkout master
    git push

The Markdown formatted style guides don't require pre-processing. I rely on Github's Markdown
renderer.

Javascript and CSS files are rendered by Github as well.

Credits
-------

* [Rocco](http://rtomayko.github.com/rocco/) is a Ruby port of Docco, the quick-and-dirty,
  hundred-line-long, literate-programming-style documentation generator.
