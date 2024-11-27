load File.dirname(__FILE__) << '/rubyrc'

begin
  require "awesome_print"
  AwesomePrint.pry!
  AwesomePrint.defaults = {
    # indent 2 spaces. Negative means left align hash keys.
    indent: -2
  }
rescue LoadError
end

