load File.dirname(__FILE__) << '/rubyrc'

if defined?(Hirb)
  old_print = Pry.config.print
  Pry.print = proc do |*args|
    Hirb::View.view_or_page_output(args[1]) || old_print.call(*args)
  end
end
