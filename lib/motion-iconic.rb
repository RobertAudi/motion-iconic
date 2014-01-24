unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

require "motion-cocoapods"

Motion::Project::App.setup do |app|
  app.files += Dir.glob(File.join(File.dirname(__FILE__), "motion-iconic", "*.rb"))

  app.pods do
    pod "FontAwesomeKit", "~> 2.1.0"
  end
end
