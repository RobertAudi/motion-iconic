module Motion
  module Iconic
    version_file = File.expand_path("../../VERSION", File.dirname(File.realpath(__FILE__)))
    VERSION = File.read(version_file).freeze
  end
end
