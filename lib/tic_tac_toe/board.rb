module TicTacToe
  class Board
    attr_reader :grid
    def initialize(input = {}) #takes a hash with a grid key
      @grid = input.fetch(:grid, default_grid)
    end
    def get_cell(x, y)
      grid[y][x]
    end
    def set_cell(x, y, value)
      grid[y][x].value = value
    end
    def game_over
      return :winner if winner?
      return :draw if draw?
      false
    end
 
    private
 
    def default_grid
      Array.new(3) { Array.new(3) { Cell.new } }
    end
    def winner?
      winning_positions.each do |winning_position|
        next if winning_position_values(winning_position).any_empty?
        return true if winning_position_values(winning_position).all_same?
      end
      false
    end
    def winning_position_values(winning_position)
      winning_position.map { |cell| cell.value }
    end
    def draw?
      grid.flatten.map { |cell| cell.value }.none_empty?
    end
    def winning_positions
      grid + #rows
      grid.transpose + #columns
      diagonals #diagonals
    end
    def diagonals
      [
        [get_cell(0, 0), get_cell(1, 1), get_cell(2, 2)],
        [get_cell(0, 2), get_cell(1, 1), get_cell(2, 0)]
      ]
    end
  end
end