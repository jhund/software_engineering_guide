# This guide applies to a **Ruby on Rails Module**. It is part of Jo Hund's
# [Software Engineering Guide](http://github.com/jhund/software_engineering_guide).

#
# Store modules in `/app/concerns/`

# Add the below to your auto_load_paths in application.rb:
# `config.autoload_paths += "#{ config.root }/app/concerns"`

module NewModule
  
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def a_class_method
      puts "a_class_method"
    end
  end
  
  def an_instance_method
    puts "an_instance_method"
  end
  
end
