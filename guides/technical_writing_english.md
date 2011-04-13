Jo Hund's Style Guide for Technical Writing in English
======================================================

This style guide applies to **Technical Writing**. It is part of Jo Hund's
[Software Engineering Guide](http://github.com/jhund/software_engineering_guide).



Writing a technical report
--------------------------

How to make engineers write concisely with sentences? By combining journalism with the technical
report format. In a newspaper article, the paragraphs are ordered by importance, so that the reader
can stop reading the article at whatever point they lose interest, knowing that the part they have
read was more important than the part left unread.

State your message in one sentence. That is your title. Write one paragraph justifying the message.
That is your abstract. Circle each phrase in the abstract that needs clarification or more context.
Write a paragraph or two for each such phrase. That is the body of your report. Identify each
sentence in the body that needs clarification and write a paragraph or two in the appendix. Include
your contact information for readers who require further detail.

[William A. Wood, September 8, 2005](http://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=0001yB)


Apply 8-sequence structure of screenplays to technical communications
---------------------------------------------------------------------

In screenwriting, the 3 acts are broken down even further into 8 sequences, with 2 sequences in the
the first act, 4 in the second act, and the final 2 in the third act. They are:

**First Act**

1. show the protagonist in his natural environment
2. introduction of the central conflict and the point of attack

**Second Act**

3. rising action and elaboration of the conflict
4. false hope as it appears that the conflict will be resolved
5. hope is revealed to be false, falling into the point of greatest despair
6. protagonist takes control of his fate and works towards resolution

**Third Act**

7. central conflict is resolved in dramatic climax; false ending
8. true ending, or denouement

(the next time you watch a film, pay attention and see if you can spot these sequences - they are in
almost all films)

**Applying this to your communications**

In films this structure is used to draw the viewer in and engage their interest; at work it can be
useful as a method of describing a problem and proposing a particular solution. For example, it can
be used to concisely describe things in just 8 sentences:

1. "As you know, we have arrangement A of nature B."
2. "Recently, we've found that event E has occurred and disrupted nature B."
3. "Further, this means that arrangement A is now wholly untenable."
4. "At first, we assumed it would be a simple matter of using Easy Fix F to restore arrangement A."
5. "Unfortunately, we failed to anticipate complication C, which prevented us from doing so and made
   the problem worse."
6. "Therefore, we have decided to resort to More Difficult Fix M in the hopes of improving the
   situation."
7. "Having prepared More Difficult Fix M for execution, we have found that it is indeed working and
   arrangement A+ has been achieved, which is for now an adequate state."
8. "Additionally, we have found A+ to possess additional nature N+, which we did not anticipate and
   has yielded Bonus Consequence Q."

It turns out that this 8-sequence structure is extremely useful in narrating anything in a way that
maximizes the other person's emotional connection with the subject. This makes it a great structure
to follow for expository writing because readers engage with it in the way that people engage with
the narrative of a story. Additionally, if you are operating under a conciseness requirement but
want to make sure you aren't too abrupt, this gives you a good maps of what major points you need to
hit at a minimum.

Slightly modified from [Things I Learned From My Wife's Screenwriting Education, Part I](http://algeri-wong.com/yishan/things-i-learned-from-my-wifes-screenwriting-education-part-i.html)


Rules
-----

 *  Title capitalization according to [Chicago Manual of Style][1]:
    1. Always capitalize the first and the last word.
    2. Capitalize all nouns, pronouns, adjectives, verbs, adverbs, and subordinate conjunctions
       ("as", "because", "although").
    3. Lowercase all articles, coordinate conjunctions ("and", "or", "nor"), and prepositions
       regardless of length, when they are other than the first or last word.
    4. Lowercase the "to" in an infinitive.
 *  [One space after period][2].
 *  [Strongly prefer active voice over passive voice][3] to avoid ambiguity.

[1]: http://www.writersblock.ca/tips/monthtip/tipmar98.htm  "Capitalization in Titles"
[2]: http://grammar.quickanddirtytips.com/spaces-period-end-of-sentence.aspx  "Grammar Girl on Spaces After a Period"
[3]: http://grammar.quickanddirtytips.com/active-voice-versus-passive-voice.aspx  "Grammar Girl on Active Voice"



Lexical Order
-------------

Work more efficiently and reduce mistakes by sorting lists consistently. By consistently ordering
your various lists, you will

* find items faster
* avoid duplicates
* notice missing items.

Examples for lists are:

* Files in a directory (sorted by file name)
* Emails in your inbox (sorted by subject)
* Invoices (sorted by invoice number)

Whenever you add a date stamp to something (e.g. like in rails migrations), use the following format:
YYYY-MM-DD, example: 2010-07-30, or without the dash: 20100730

The first one is easier to parse by humans (and SQL databases), the second one is shorter. Both
work fine as long as you keep the format consistent within each list.

The general rule is to go from general to more specific:

* Email subject: "[Project Name] | [Message Summary]"
* file name: "[client]-monthly-hours-[date_stamp]"
* Invoice numbering: "Invoice-[client]-[date_stamp]"
* google analytics campaign ids: "[client]-[category]-[date_stamp]"



User Interface Language
-----------------------

Write it like a play. Make it clear who is speaking at all times.

Identifying user's belongings - Use second person. These are typically navigational elements.
Examples: Your Profile, Your Tasks, Your Projects.

Actions (both user initiated or call to action) - Use imperative without pronoun. Used on buttons or
links.
Examples: "Edit Profile", "Delete Project", "Buy Now"

Related blog post: [Bye-Bye, My](http://weblog.muledesign.com/2010/06/unsuck_it_special_byebye_my.php)



Further Reading
---------------

* [Brevity is Beautiful](http://betterexplained.com/articles/brevity-is-beautiful/)
* [Economist Style Guide](http://www.economist.com/research/StyleGuide/)
* [Grammar Girl](http://grammar.quickanddirtytips.com/) - Quick and Dirty Tips for Better Writing
* [Yahoo's Editing 101](http://styleguide.yahoo.com/editing)
* [Yahoo's Word List](http://styleguide.yahoo.com/word-list)
