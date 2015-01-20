# Credit card spec 
require 'spec_helper'
require "rubygems"
require 'json'
require 'pry'

require_relative '../lib/luhn'

describe Validator do
  
  before(:all) do
    @validator = Validator.new('4024007166175140')
  end

  describe '#convert_to_array' do
    it 'converts the cc number string into an array of digits' do
      expect(@validator.convert_to_array).to eq [4,0,2,4,0,0,7,1,6,6,1,7,5,1,4,0]
    end
  end

  describe '#cc_num_pop' do
    it 'removes the last item in the array and saves it' do
      expect(@validator.cc_num_pop).to eq [4,0,2,4,0,0,7,1,6,6,1,7,5,1,4]
    end
  end

  describe '#cc_num_reverse' do
    it 'reverses the array and returns the reversed array' do
      expect(@validator.cc_num_reverse).to eq [4,1,5,7,1,6,6,1,7,0,0,4,2,0,4]
    end
  end

  describe '#mutate_array' do
    it 'multiplies the odd positioned numbers (0+1 index), subtracts 9 if the product is greater than 9' do
      expect(@validator.mutate_array).to eq [8,1,1,7,2,6,3,1,5,0,0,4,4,0,8]
    end
  end

  describe '#sum_array' do
    it 'sums the values of the entire array plus the checksum' do
      expect(@validator.sum_array).to eq 50
    end
  end

  describe '#luhn_truthy' do
    it 'returns a boolean based on the sum' do
      expect(@validator.luhn_truthy).to eq true
    end
  end
end







