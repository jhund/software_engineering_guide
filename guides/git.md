Jo Hund's Git Guide
===================

This guide applies to working with **Git** for version control. It is part of Jo Hund's
[Style Guide collection](http://github.com/jhund/styleguide).

Commit Message Title
--------------------

* Describe what this commit accomplishes. Explain the "why". The "what" is already documented in the diff.
* Less than 80 characters.
* Active voice, first person (skip the "I"), past tense.
* Start with a verb.

Examples:

* "Fixed login bug"
* "Increased line-height for all <p>"
* "Updated filterrific gem to 2.1.4"
* "Bumped version to 3.7.3"

Commit Message Body
-------------------

If the commit is fairly substantial and contains e.g. all changes for a new feature, then list the
details in the message body. Most of the time a message body is not required. The diff should speak
for itself.

Git Workflow and Branches
-------------------------

My current favourite workflow model is described by [Vincent Driessen](http://nvie.com/git-model).

He uses the following branches:

* master: To deploy to production. Merged into only when a new version is ready to be released. Has
  infinite life cycle.
* develop: Integration branch for new feature work. Run continuous integration on this branch. Merge
  finished features into this branch. Has infinite life cycle.
* feature-*: Develop new features in their own temporary branch. Only merge into development when
  feature is ready.
* release-*: Finalize a release in its own temporary branch (version numbers, bug fixes).
* hotfix-*: Fix critical bugs in temporary hotfix branches.
* support-*: Maintenance branch for each release where release specific changes are required.

He also developed a [git extension](http://github.com/nvie/gitflow) to make working with this model
easy. [Jeff Kreeftmeijer](http://jeffkreeftmeijer.com/2010/why-arent-you-using-git-flow/) has some
more info on the use of these git extensions.
