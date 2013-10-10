require 'erubis'
require 'erb'

ERB_ENGINE = Erubis::Eruby unless defined?(ERB_ENGINE)

if ERB_ENGINE != ERB
  util = ERB::Util

  Object.send :remove_const, :ERB
  ERB = ERB_ENGINE
  ERB::Util = util

  class Erubis::Eruby # to be compatible with ERB constructor
    def initialize(input = nil, *args)
      if args.size.zero? || args.first.is_a?(Hash)
        super
      else
        trim = args[1] == '-'
        bufvar = args[2]
        super input, :trim => trim, :bufvar => bufvar
      end
    end
  end
end
