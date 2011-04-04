# This guide applies to a **Ruby on Rails Module**. It is part of Jo Hund's
# [Software Engineering Guide](http://github.com/jhund/software_engineering_guide).

# Store modules in `/app/concerns/`
# 
# Add the below to your auto_load_paths in application.rb:
# 'config.autoload_paths += "#{ config.root }/app/concerns"'
#
# Naming convention: If you are adding shared behavior to a polymorphic association, you could call
# it: 'CommentableMixin' or 'CommentableBehavior'

# In Rails3 there is now a canonical way to include modules into Classes: ActiveSupport::Concern
#
# Directly from the Rails documentation:
require 'active_support/concern'

module M

  extend ActiveSupport::Concern

  included do
    scope :disabled, where(:disabled => true)
  end

  module ClassMethods
    ...
  end

  module InstanceMethods
    ...
  end

end

# Then use it in a class you want to add the behavior to:

class ExtendedClass < ActiveRecord::Base
  
  include M
  
  ...
  
end

# Additional Reading:
# http://yehudakatz.com/2009/11/12/better-ruby-idioms/
# http://www.strictlyuntyped.com/2010/05/tweaking-on-rails-30-2.html
