class ChartsController < ApplicationController
  def index
  end

  def basic_line
    @chart = Chart.basic_line_chart
  end
end
