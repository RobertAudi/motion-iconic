module Motion
  module Iconic
    class Icon
      CLASSES = {
        awesome: :FAKFontAwesome,
        foundation: :FAKFoundationIcons,
        ion: :FAKIonIcons,
        zocial: :FAKZocial
      }

      def self.icon(icon, withSize:size, inCollection:collection)
        alloc.initWithIcon(icon, withSize:size, inCollection:collection)
      end

      def self.awesomeIcon(icon, withSize:size)
        alloc.initWithAwesomeIcon(icon, withSize:size)
      end

      def self.foundationIcon(icon, withSize:size)
        alloc.initWithFoundationIcon(icon, withSize:size)
      end

      def self.ionIcon(icon, withSize:size)
        alloc.initWithIonIcon(icon, withSize:size)
      end

      def self.zocialIcon(icon, withSize:size)
        alloc.initWithZocialIcon(icon, withSize:size)
      end

      def initWithIcon(icon, withSize:size, inCollection:collection)
        unless Motion::Iconic::Constants::ICONS.has_key? collection
          raise Motion::Iconic::InvalidIconCollectionError.new collection
        end

        unless Motion::Iconic::Constants::ICONS[collection].include? icon
          raise Motion::Iconic::InvalidIconError.new icon
        end

        Kernel.const_get(CLASSES[collection]).send("#{icon}IconWithSize", size)
      end

      def initWithAwesomeIcon(icon, withSize:size)
        initWithIcon(icon, withSize:size, inCollection: :awesome)
      end

      def initWithFoundationIcon(icon, withSize:size)
        initWithIcon(icon, withSize:size, inCollection: :foundation)
      end

      def initWithIonIcon(icon, withSize:size)
        initWithIcon(icon, withSize:size, inCollection: :ion)
      end

      def initWithZocialIcon(icon, withSize:size)
        initWithIcon(icon, withSize:size, inCollection: :zocial)
      end
    end
  end
end
