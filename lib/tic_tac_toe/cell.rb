module TicTacToe
  class Square
    attr_accessor :value
    def initialize(value = "\s")
      @value = "\s"
    end
    def to_s
      @value
    end
  end
end
