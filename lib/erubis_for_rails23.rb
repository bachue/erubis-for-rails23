require 'erubis'
require 'erb'

util = ERB::Util

Object.send :remove_const, :ERB
ERB = Erubis::Eruby
ERB::Util = util

class Erubis::Eruby # to be compatible with ERB constructor
  def initialize(input, *args)
    if args.size.zero? || args.first.is_a?(Hash)
      super
    else
      trim = args[1] == '-'
      bufvar = args[2]
      super input, :trim => trim, :bufvar => bufvar
    end
  end
end
