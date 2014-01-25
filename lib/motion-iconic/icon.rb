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
        unless Motion::Iconic::Yaritousu::ICONS.has_key? collection
          raise Motion::Iconic::InvalidIconCollectionError.new collection
        end

        unless Motion::Iconic::Yaritousu::ICONS[collection].include? icon
          raise Motion::Iconic::InvalidIconError.new icon
        end

        Kernel.const_get(CLASSES[collection]).send("#{icon}IconWithSize", size)
      end

      def self.awesomeIcon(icon, withSize:size)
        icon(icon, withSize:size, inCollection: :awesome)
      end

      def self.foundationIcon(icon, withSize:size)
        icon(icon, withSize:size, inCollection: :foundation)
      end

      def self.ionIcon(icon, withSize:size)
        alloc.initWithIonIcon(icon, withSize:size)
        icon(icon, withSize:size, inCollection: :ion)
      end

      def self.zocialIcon(icon, withSize:size)
        icon(icon, withSize:size, inCollection: :zocial)
      end
    end
  end
end

Mic = Motion::Iconic::Icon unless defined? Mic
