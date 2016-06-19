class KeisansController < ApplicationController
  def keisan
    @id1 = params[:id1]
    @id2 = params[:id2]
    @result = @id1.to_i * @id2.to_i
  end

  def shisoku
    @id1 = params[:id1]
    @id2 = params[:id2]
    @shisoku = params[:shisoku]

    if @shisoku == "tasu"
      @result = @id1.to_i + @id2.to_i
    elsif @shisoku == "hiku"
      @result = @id1.to_i - @id2.to_i
    elsif @shisoku == "kakeru"
      @result = @id1.to_i * @id2.to_i
    elsif @shisoku == "waru"
      @result = @id1.to_i / @id2.to_i
    elsif @shisoku == "amari"
      @result = @id1.to_i % @id2.to_i
    else
      @result = "演算子が無効です"
    end
  end
end
