# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('.datepicker').datepicker({ dateFormat: "yy-mm-dd" })

  if $('#chart').is(':visible')
    chart = new Highcharts.Chart({
        chart: {
            renderTo: 'chart',
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: $('#chart').data('event_title') 
        },
        tooltip: {
          pointFormat: '{series.name}: <b>{point.percentage}%</b>',
          percentageDecimals: 1
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    color: '#000000',
                    connectorColor: '#000000',
                    formatter: () ->
                        return '<b>'+ this.point.name +'</b>: '+ this.percentage +' %'
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Browser share',
            data: $('#chart').data('results')
        }]
    })

