require_relative "board"

class Space
    attr_accessor :display, :status

    def initialize
        @status = "blank"
        @display = " - "
    end
end