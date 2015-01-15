# encoding: utf-8
class ChartPoker
  def self.basic_line_chart(hash_arr,time_arr)
    @chart = LazyHighCharts::HighChart.new('basic_line') do |f|
      f.chart({ type: 'line',
                marginRight: 130,
                marginBottom: 50 })
      f.title({  text: 'poker',
                 x: -20
      })
      f.xAxis({
         categories: time_arr
      })
      f.yAxis({
        title: {
          text: '数量(个)'
        },
        plotLines: [{
          value: 0,
          width: 1,
          color: '#808080'
        }]
      })
      f.tooltip({
        valueSuffix: '个'
      })
      f.legend({
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'top',
        x: -10,
        y: 100,
        borderWidth: 0
      })
      f.subtitle({
        text: 'Source: cpbao.com',
        x: -20
      })


      hash_arr.each_key do |key|
        f.series({
          name: key,
          data: hash_arr[key]
        })
      end
      
    end
  end


end
