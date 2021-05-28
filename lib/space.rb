require_relative "board"

class Space
    attr_accessor :display

    def initialize
        @status = "blank"
        @display = " - "
    end
end