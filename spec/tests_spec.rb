require_relative '../lib/logic'

describe TicTacToe do
  describe '#taken?' do
    it 'returns true if pseudo not empty.' do
      temp = TicTacToe.new
      expect(temp.pseudo_empty?('Player1')).to eql(false)
    end
    it 'returns true if pseudo not empty.' do
      temp = TicTacToe.new
      expect(temp.pseudo_empty?('')).to eql(true)
    end
  end

  describe '#taken?' do
    it 'returns true if position already taken.' do
      temp = TicTacToe.new
      expect(temp.taken?(3, [1, 2, 4])).to eql(false)
    end
    it 'returns true if position already taken.' do
      temp = TicTacToe.new
      expect(temp.taken?(2, [1, 2, 4])).to eql(true)
    end
  end

  describe '#arbiter' do
    it 'returns false if one player is identified as winner' do
      temp = TicTacToe.new
      expect(temp.arbiter(8, 'X', 'Player1', [[1, 5, 9], [1, 2, 3], [1, 4, 7], ['X', 'X', 8], [3, 5, 7], [3, 6, 9], [4, 5, 6], [7, 8, 9]])).to eql(false)
    end
  end

  describe '#arbiter' do
    it 'returns ""if none of the players is identified as winner ' do
      temp = TicTacToe.new
      expect(temp.arbiter(8, 'X', 'Player1', [[1, 5, 9], [1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 5, 7], [3, 6, 9], [4, 5, 6], [7, 8, 9]])).to eql("")
    end
  end
end

describe GameMethods do
  it 'returns user input if the input matches the regexp pattern condition. however it returns false.' do
    expect(GameMethods.check_input(3)).to eql(3)
  end

  it 'returns user input if the input matches the regexp pattern condition. however it returns false.' do
    expect(GameMethods.check_input('-')).to eql(false)
  end
end
