module Moon
  module Memoized
    # Creates a memoized attribute, memoized attributes will initialize themself
    # if their respective instance variable is nil, once.
    #
    # @overload memoize_attr(name, value)
    #   @param [String, Symbol] name
    #   @param [Object] value
    # @overload memoize_attr(name, &block)
    #   @param [String, Symbol] name
    #   @yieldreturn [Object] value
    # @return [Symbol] method_name
    def memoize_attr(name, value = nil, &block)
      iv = "@#{name}"
      define_method(name) do
        if v = instance_variable_get(iv)
          return v
        end
        v = value || instance_exec(&block)
        instance_variable_set(iv, v)
      end
    end
  end
end
