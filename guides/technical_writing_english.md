Jo Hund's Style Guide for Technical Writing in English
======================================================

This style guide applies to **Technical Writing**. It is part of Jo Hund's
[Style Guide collection](http://github.com/jhund/styleguide).



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
YYYY-MM-DD, example: 2010-07-30 or without the dash: 20100730

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
