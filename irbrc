require 'rubygems'
require 'hirb'

begin
  IRB::Irb.class_eval do
    def output_value
      ap @context.last_value
    end
  end
rescue LoadError => e
  puts "ap gem not found.  Try typing 'gem install awesome_print' to get super-fancy output."
end

def haml
  helper.extend Haml::Helpers
  helper.extend ApplicationHelper
  helper.init_haml_helpers
  puts "Haml Helpers Loaded"
end
public :haml

Hirb.enable

alias q exit

def lap
  require 'ap'
end

class Object
  def wtf(method_name)
    method(method_name).source_location
    rescue NameError
      "#{method_name} not defined"
  end
end

if defined? Rails
  ActiveRecord::Base.logger = Logger.new STDOUT
  ActiveRecord::Base.clear_reloadable_connections!
  ActionController::Base.logger = Logger.new STDOUT
  include Rails.application.routes.url_helpers
  default_url_options[:host] = Rails.application.class.parent_name.downcase

  url_opts = {url_options: {host:"x.x"}}

  app_name = Rails.application.class.parent_name.downcase
  app_env  = Rails.env[0...3]
  IRB.conf[:PROMPT] ||= {}
  IRB.conf[:PROMPT][:RAILS] = {
    :PROMPT_I => "#{ app_name }(#{ app_env })> ",
    :PROMPT_N => "#{ app_name }(#{ app_env })| ",
    :PROMPT_C => "#{ app_name }(#{ app_env })| ",
    :PROMPT_S => "#{ app_name }(#{ app_env })%l ",
    :RETURN => "=> %s\n",
    :AUTO_INDENT => true,
  }
  IRB.conf[:PROMPT_MODE] = :RAILS

  def sql(query)
    ActiveRecord::Base.connection.select_all(query)
  end

  module DatabaseHelpers
    extend self

    def tables
      Hirb::Console.render_output ActiveRecord::Base.connection.tables.map{|e|[e]},{
        :class   => Hirb::Helpers::AutoTable,
        :headers => %w<tables>,
      }
      true
    end

    def table(which)
      Hirb::Console.render_output ActiveRecord::Base.connection.columns(which).map{ |e|
        [e.name, e.type, e.sql_type, e.limit, e.default, e.scale, e.precision, e.primary, e.null]
      },{
        :class   => Hirb::Helpers::AutoTable,
        :headers => %w<name type sql_type limit default scale precision primary null>,
      }
      true
    end

    def counts
      Hirb::Console.render_output ActiveRecord::Base.connection.tables.map{|e|
        [e, ActiveRecord::Base.connection.select_value("SELECT COUNT(*) FROM #{e}")]
      },{
        :class   => Hirb::Helpers::AutoTable,
        :headers => %w<table count>,
      }
      true
    end
  end

  def db; DatabaseHelpers; end

  def show_log
    _change_log STDOUT
  end

  def hide_log
    _change_log nil
  end

  def _change_log(stream)
    ActiveRecord::Base.logger = ::Logger.new(stream)
    ActiveRecord::Base.clear_all_connections!
    nil
  end

end

