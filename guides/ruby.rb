# This style guide applies to a **Ruby Code in General**. It is part of Jo Hund's
# [Style Guide collection](http://github.com/jhund/styleguide).
#
# 
### Formatting
# 
# * Encode in UTF-8.
# * End lines Unix-style (LF).
# * No line longer than 100 characters. Makes it possible to read code e.g. in version control
#   diffs and ack search results.

# * Indent with 2 spaces. No tabs, ever. They make reading diffs hard.
def a_method
  method_body
end

# * Avoid indentation other than at the beginning of a line. It might look pretty at first sight,
#   however it creates more work because a change to one line might affect all other lines. It
#   makes it harder to spot the actual change in version control diffs.
def do_this
  {
    :a => 1,
    :very_long_hash_key => 2,
    :medium => 3
  }
end

def dont_do_this
  {
    :a                  => 1,
    :very_long_hash_key => 2,
    :medium             => 3
  }
end

# * Put spaces around operators, after commas, colons and semicolons, around { and before }.
1 + 3
array = [1, 2, 3, 4]
hash = { :a => 1, :b => 2, :c => 3 }
"#{ interpolated_strings }"
lambda { |args| also_for_blocks }

# * No spaces after (, [ and before ], ).
method(1)
hash[key]
array = [1, 2, 3, 4]

# * Put two spaces before statement modifiers (postfix `if/unless/while/until/rescue`).
"true"  if true
"true"  unless false

# * Indent `when` as deep as `case`.
case arg
when 1
  do_1
when 2
  do_2
end


# * Use YARD and its conventions for API documentation.  Don't put an empty line between
#   the comment block and the def. [YARD info](http://yardoc.org/).
# * Use empty lines to break up a long method into logical paragraphs.
# * No trailing whitespace.


### Syntax
#
# * Use `def` with parentheses when there are arguments.
# * Never use `for`, unless you exactly know why.
# * Never use `then`.

# * Use `when x; ...` for one-line cases. (Ruby 1.9 compatible)
case a; when String; a; when Integer; a.to_s; end

# * Use `&&/||` for boolean expressions, `and/or` for control flow.  (Rule
#     of thumb: If you have to use outer parentheses, you are using the
#     wrong operators.)
p = Person.find_by_id(id) or raise "Could not find person"
p = Person.find_by_id(id) || Person.new
p = Person.find_by_id(id) and p.update_last_seen_at


# * Avoid multiline `?:`, use `if`.

# * Use parentheses liberally. Omit them only in the simplest cases.
#   They are helpful in breaking long lines and keeping row length under
#   100 characters. Makes your ruby look a bit more like C.
x = Math.sin(y)
array.delete(e)

# * Prefer `{...}` over `do...end`. Multiline `{...}` is fine: having different statement endings (
#   `}` for blocks, `end` for if/while/...) makes it easier to see what ends where. But use
#   `do...end` for "control flow" and "method definitions" (e.g. in Rakefiles and certain DSLs.)
#   Avoid `do...end` when chaining.
# * Avoid `return` where not required.
# * Avoid line continuation (`\`) where not required.

# * Using the return value of `=` is okay. Put parentheses around it to indicate that this is
#   intentional.
if (v = array.grep(/foo/)) ...
  
# * when comparing two values, put the constant first. This will raise an error if you use `=`
#   where you should have used `==`
if "start" == state
  
# * Use `||=` freely.

# * Use `w%[...]` notation for arrays that contain single word strings
%w[project todo collaborator].each { |e| puts e }

# * Use `\A and \z` to set boundaries on regular expressions, don't use `^ and $`. Az match to the
#   beginning/end of the string. ^$ match to the beginning/end of a line.

### Naming
#
# * Use `snake_case` for methods.
# * Use `CamelCase` for classes and modules.  (Keep acronyms like HTTP, RFC, XML uppercase.)
# * Use `SCREAMING_SNAKE_CASE` for other constants.

# * The length of an identifier determines its scope.  Use one-letter variables for short
#   block/method parameters, according to this scheme:
#   * e: elements of an Enumerable: ary.each { |e| puts e }
#   * ex: rescued exceptions: rescue
#   * f: files and file names
#   * i,j: indexes
#   * k: the key part of a hash entry
#   * v: any value
#   * v: the value part of a hash entry

# * Use names prefixed with _ for unused variables: `def mock(_dummy)`
# * When using inject with short blocks, name the arguments `|m, e|` (mnemonic: memo, each)
# * When defining binary operators, name the argument "other": `def +(other)`
# * Prefer `map` over collect, `find` over detect, `find_all` over select.
# * use the following format for binary getters:
#   * has_permission?
#   * is_yellow?
# * start expensive method names with "compute_"

### Comments
#
# * Comments longer than a word are capitalized and use punctuation.
# * Avoid superfluous comments.


### The rest
#
# * Avoid hashes-as-optional-parameters. Does the method do too much?
# * Avoid long methods.
# * Avoid long parameter lists.
# * Avoid message chaining (task.project.user), use delegate/demeter instead (task.user)
# * Use `def self.method` to define singleton/class methods.
# * Avoid `alias` when `alias_method` will do.
# * Write for 1.8, but avoid doing things you know that will break in 1.9.
# * Avoid needless metaprogramming.


### General
#
# * Code in a functional way, avoid mutation when it makes sense.
# * Do not mess around in core classes when writing libraries.
# * [Do not program defensively.](http://www.erlang.se/doc/programming_rules.shtml#HDR11)
#   > One should not test input data to functions for correctness. Most of the code in the system
#   > should be written with the assumption that the input data to the function in question is
#   > correct. Only check data when it "enters" the system for the first time.
# * Keep the code simple.
# * Don't generalize prematurely. Build 2 specific solutions before you build a general solution.
# * Design breadth first. Don't jump on the first implementation idea that pops up in your mind.
#   Make an effort to come up with 2 alternative approaches. This doesn't have to take long.
# * Don't optimize prematurely. Optimize when you have no other choice.
# * Be consistent.
