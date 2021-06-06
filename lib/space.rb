require_relative "board"

class Space
    attr_accessor :display, :status, :occupied

    def initialize
        @status = "blank"
        @display = " - "
        @occupied = false
    end
end