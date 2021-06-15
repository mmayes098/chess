require_relative "board"

class Space
    attr_accessor :display, :type, :occupied

    def initialize
        @type = "blank"
        @display = " - "
        @occupied = false
    end
end