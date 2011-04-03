Jo Hund's Style Guide for Timezones in Rails
============================================

This style guide applies to **handling time zones**. It is part of Jo Hund's
[Style Guide collection](http://github.com/jhund/styleguide).


Rules for dealing with time zones:

1. handles times internally ALWAYS in UTC
2. obey rule #1
3. when touching a time, always be 100% sure you know what time zone it is in

In some situations you might think it's ok to store a date as date column in the DB. Don't if you
have to manage timezones (which is almost always the case). Use a datetime column instead. That way
you can rely on Rails to easily convert the date between time zones.
