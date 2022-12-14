require_relative '../app'

describe 'summation' do
  it('returns the sum of two numbers') do
    expect(summation(1, 2)).to eq(3)
  end

  it('does not return the wrong sum') do
    expect(summation(1, 2)).not_to eq(4)
  end
end
