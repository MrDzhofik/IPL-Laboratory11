class CalcController < ApplicationController
  before_action :set_params, only: [:show]

  def input
  end

  def show    
    if @right_numbers.nil?
      @note.save!
      @right_numbers = @note.decode_array
      @msg = "Write to DB"
    else
      @right_numbers = @right_numbers.decode_array
      @msg = "Data from DB"
    end
  end

  def set_params
    @right_numbers = Answer.find_by(numbers: params[:power].to_i)
    @note = Answer.new(numbers: params[:power].to_i)
  end

  def json
    @db = Answer.all
    render json: @db
  end

  def xml
    ans = Answer.all.map do |answer|
      { number: answer.numbers, right: answer.right_numbers }
    end
    render xml: ans
  end

end
