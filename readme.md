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

* [Email](software_engineering_guide/blob/master/guides/email.md)
* [Git](software_engineering_guide/blob/master/guides/git.md)
* [HTML Document Structure](software_engineering_guide/blob/master/guides/html_document_structure.md)
* [Rails Controller](http://downloads.clearcove.ca/software_engineering_guide/rails_controller.html) (External HTML file)
* [Rails Model](http://downloads.clearcove.ca/software_engineering_guide/rails_model.html) (External HTML file)
* [Rails Module](http://downloads.clearcove.ca/software_engineering_guide/rails_module.html) (External HTML file)
* [Ruby](http://downloads.clearcove.ca/software_engineering_guide/ruby.html) (External HTML file)
* [Technical Writing in English](software_engineering_guide/blob/master/guides/technical_writing_english.md)


Workflow
--------

The commands below will generate the rocco html output for the ruby styleguides.

    cd into software_engineering_guide/guides
    rocco *.rb

The Markdown formatted style guides don't require pre-processing. I rely on Github's Markdown
renderer.

Javascript and CSS files are rendered by Github as well.



Credits
-------

* Ruby style guide started as a fork of Christian Neukirchen's Ruby Style guide. It has since
  evolved into a larger body of content.
* [Rocco](http://rtomayko.github.com/rocco/) is a Ruby port of Docco, the quick-and-dirty,
  hundred-line-long, literate-programming-style documentation generator.