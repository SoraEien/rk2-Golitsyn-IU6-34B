class NumbersController < ApplicationController
    def index
    end

    def calculate
      sequence = params[:sequence].split.map(&:to_i)
      sum_of_even_numbers = sequence.select { |n| n.even? }.sum
      index_of_last_divisible_by_6 = sequence.reverse.index { |n| n % 6 == 0 }
      newarr = sequence
      newarr[newarr.length - 1 - index_of_last_divisible_by_6] = sum_of_even_numbers
      @result = newarr
    end
  end