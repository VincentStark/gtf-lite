# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$.fn.showChart = (chart_data) ->

  now = new Date
  month_ago = new Date 1900+now.getYear(), now.getMonth()-1, now.getDay()

  new Highcharts.Chart
    chart:
      renderTo: 'chart'
    title:
      text: 'Searches by Day'
    xAxis:
      type: 'datetime'
    yAxis:
      title: 'Google'
    series:[
      pointInterval: 86400000 # 1 day
      pointStart: month_ago.getTime()
      showInLegend: false
      data: chart_data
    ]
