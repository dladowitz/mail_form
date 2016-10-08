module MailForm
  class Base
    include ActiveModel::AttributeMethods
    attribute_method_prefix 'clear_'

    def self.attributes(*names)
      attr_accessor(*names)
      define_attribute_method(names)
    end

    def clear_attribute(attribute)
      send("#{attribute}=", nil)
    end
  end
end
