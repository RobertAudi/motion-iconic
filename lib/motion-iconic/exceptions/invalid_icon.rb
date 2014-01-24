module Motion
  module Iconic
    class InvalidIconError < NameError
      def initialize(icon)
        super "Motion::Iconic: Invalid icon: #{icon.inspect}"
      end
    end
  end
end
