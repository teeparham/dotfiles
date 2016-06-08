# https://gist.github.com/justVitalius/25318a1d71bcc657ee21

images = Dir.glob('app/assets/images/**/*')
images_to_delete = []

images.each do |image|
  next if File.directory?(image)
  print "."
  result = `ack -1 --ruby --html --css --js #{File.basename(image)}`
  if result.empty?
    images_to_delete << image
  end
end

puts "\n\nFound #{images_to_delete.count} unused files.\n\n"
puts images_to_delete.join("\n")
