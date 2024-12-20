# frozen_string_literal: true

# see https://github.com/henrik/dotfiles/blob/master/Rakefile

IGNORE_FILES = ["Rakefile", "README.md", ".gitignore", "extras"].freeze

def error(text)
  warn "!  #{text}"
end

def info(text, prefix = "*")
  $stdout.puts "#{prefix}  #{text}"
end

def info_cmd(text)
  info(text, ">")
end

def info_rm(text)
  info(text, "x")
end

desc "Install dotfiles."
task :install do
  Dir["*"].each do |file|
    source = File.join(Dir.pwd, file)
    basename = File.basename(source)
    next if IGNORE_FILES.include?(basename)

    destination = File.expand_path("~/.#{basename}")
    if File.symlink?(destination)
      symlink_to = File.readlink(destination)
      info_rm "Removing symlink #{destination} --> #{symlink_to}" if symlink_to != source
      FileUtils.rm(destination)
    elsif File.exist?(destination)
      error "#{destination} exists. Will not automatically overwrite a non-symlink. Overwrite (y/n)?"
      print "? "
      line = $stdin.gets.chomp
      next unless line == "y"

      info_rm "Removing #{destination}."
      FileUtils.rm_rf(destination)
    end

    contents = begin
      File.read(source)
    rescue StandardError
      ""
    end

    if contents.include?("<.replace ")
      info "#{source} has <.replace> placeholders."

      contents.gsub!(/<\.replace (.+?)>/) do
        File.read(File.expand_path("~/.#{Regexp.last_match(1)}"))
      rescue StandardError => e
        error "Could not replace `#{Regexp.last_match(0)}`: #{e.message}"
        ""
      end

      File.write(destination, contents)
      info_cmd "wrote file #{destination}"
    else
      FileUtils.ln_s(source, destination)
      info_cmd "ln -s #{source} #{destination}"
    end
  end
end
