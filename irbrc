require 'irb/completion'

alias q exit

begin
  require 'hirb'
  Hirb.enable
rescue LoadError
end

def time
  t1 = Time.now
  yield
  t2 = Time.now
  puts "----> #{((t2-t1)*1000).round(0)} ms"
end

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
