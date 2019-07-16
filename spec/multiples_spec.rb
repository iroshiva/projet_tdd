require_relative '../lib/multiples.rb'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(3.5)).to eq(false)
  end
end

describe "sum_of_numbers multiple_of_3_or_5" do
  it "should sum numbers multiple_of_3_or_5" do 
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
  end

  it "decline if user number is non integer" do 
    expect(sum_of_3_or_5_multiples(7.5)).to eq("Only integer!")
    expect(sum_of_3_or_5_multiples(12.3)).to eq("Only integer!")
  end
end