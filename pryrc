begin
  require 'hirb'
  Hirb.enable

  old_print = Pry.config.print
  Pry.print = proc do |*args|
    Hirb::View.view_or_page_output(args[1]) || old_print.call(*args)
  end
rescue LoadError
  puts 'warning: hirb not installed'
end

alias q exit

def haml
  helper.extend Haml::Helpers
  helper.extend ApplicationHelper
  helper.init_haml_helpers
  puts "Haml Helpers Loaded"
end
public :haml

class Object
  def wtf(method_name)
    method(method_name).source_location
    rescue NameError
      "#{method_name} not defined"
  end
end

load File.expand_path('~/.railsrc')
