class PokersController < ApplicationController
  def index
  end

  def show_poker

    hash_arr = {}
    time_arr = []
    tong_arr = []
    shun_arr = []
    time = Time.parse("2014-11-1")
    begin_mon = time.beginning_of_month
    end_mon = time.end_of_month

    while begin_mon < end_mon
      arr_al = PokerDate.where("poker_create_time > ? and poker_create_time < ? and state like ?", begin_mon.beginning_of_day, begin_mon.end_of_day, "%同花%").size
      tong_arr << arr_al

      arr_al = PokerDate.where("poker_create_time > ? and poker_create_time < ? and state like ?", begin_mon.beginning_of_day, begin_mon.end_of_day, "%顺子%").size
      shun_arr << arr_al

      time_arr << begin_mon.strftime("%F")
      begin_mon = begin_mon + 1.day
    end

    hash_arr["同花"] = tong_arr
    hash_arr["顺子"] = shun_arr
    @chart = ChartPoker.basic_line_chart(hash_arr,time_arr)
  end
end
