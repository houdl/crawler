class Analysis
  def  self.poker(html)
    doc = Nokogiri::HTML(html)
    tab_tbody_tr = doc.css('table > tbody')[0].css('tr')
    if tab_tbody_tr.present?
      tab_tbody_tr.each do |doc_tr|
        issue = doc_tr.children[3].content[1..8]
        unless PokerDate.find_by_issue(issue)
          poker_date = PokerDate.new
          poker_date.issue = issue
          arr = []
          doc_tr.css('td > div')[0].children.each do |ch|
            arr << ch.content if ch.name == 'b'
          end
          poker_date.poker1 = arr[0]
          poker_date.poker2 = arr[1]
          poker_date.poker3 = arr[2]

          poker_date.state = doc_tr.css('td')[3].content
          str = "20" + issue[0,2] + "-" + issue[2,2] + "-" + issue[4,2]
          t  = Time.parse(str)
          t = Time.parse(doc_tr.css('td')[4].content ,t)
          poker_date.poker_create_time = t
          if poker_date.save
            puts poker_date.id
          end
        end
      end
    end
  end
end
