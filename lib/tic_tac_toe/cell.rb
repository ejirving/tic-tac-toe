module TicTacToe
  class Cell
    attr_accessor :value
    def initialize(value = "\s")
      @value = value
    end
    def to_s
      @value
    end
  end
end
