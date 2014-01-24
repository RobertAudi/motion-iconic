module Motion
  module Iconic
    class InvalidIconCollectionError < NameError
      def initialize(collection)
        super "Motion::Iconic: Invalid icon collection: #{collection.inspect}"
      end
    end
  end
end
