require('rspec')
require('scrabble')
require('pry')

describe('String#scrabble') do

  it('returns the scrabble value of a letter input') do
    expect("b".scrabble()).to(eq(3))
  end

  it('adds all the letter scores to return score for entire word') do
    expect("ad".scrabble()).to(eq(3))
  end

  it('adds up complex words') do
    expect("Expeditious".scrabble()).to(eq(21))
  end
end
