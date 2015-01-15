class TestController < ApplicationController
  require 'open-uri'
  def get_poker
    agent = Mechanize.new
    page = agent.get('http://www.cpbao.com/poker/more.jsp/')
    poker_form = page.form
    time = Time.parse("2015-1-1")

    begin_year = time.beginning_of_year
    end_year = time.end_of_year
    while begin_year < end_year
      tim = begin_year.strftime("%F")
      poker_form.texts[0].value = tim
      poker_form.texts[1].value = tim
      page = agent.submit(poker_form)
      poker_form = page.form
      Analysis.poker(page.body)
      begin_year = begin_year + 1.day
      sleep 2
    end
    redirect_to :index
    # 1.upto(14) do |da|
    #   tim = "2015-1-" + da.to_s
    #   poker_form.texts[0].value = tim
    #   poker_form.texts[1].value = tim
    #   page = agent.submit(poker_form)
    #   poker_form = page.form
    #   Analysis.poker(page.body)
    #   sleep 7
    # end


    # a.get('http://www.cpbao.com/poker/more.jsp') do |page|
    #   page.links.each do |link|
    #     puts link.text
    #   end
    # end

    # baidu_form = a.get('http://www.baidu.com').form('f')
    # google_form.q = 'ruby mechanize'
    # page = agent.submit(google_form)
    # pp page
  end

  def index
  end



end
