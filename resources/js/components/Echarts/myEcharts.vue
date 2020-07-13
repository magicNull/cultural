<template>
  <div>
    <div id="myMap" ref="myMap" style="width: 1000px; height: 600px;"></div>
  </div>
</template>

<script>
  let echarts = require('echarts/lib/echarts');
  require('echarts/lib/chart/bar');  // 引入柱状图组件
  require('echarts/lib/chart/pie');  // 引入饼状图组件
  require('echarts/map/js/china.js');  // 引入中国地图组件
  // // // 引入提示框和title组件
  require('echarts/lib/component/tooltip');
  require('echarts/lib/component/title');
  require('echarts/theme/macarons');//引入主题
  require('echarts/theme/shine');//引入主题
  export default {
    data() {
      return {
        msg: 'Welcome to Your Vue.js App',
        chart: null,
      }
    },
    created() {

    },
    mounted() {

      this.drawChinaMap()
    },
    updated() {
      if (!this.chart) {
        this.initChart()
      }
    },
    beforeDestroy() {
      if (!this.chart) {
        return
      }
      this.chart.dispose()
      this.chart = null
    },
    computed: {},
    methods: {
      drawChinaMap() {
        let chart = this.$echarts.init(document.getElementById('myMap'));
        this.chart = chart;
        chart.setOption({
          backgroundColor: 'rgba(0,0,0,0.5)',
          title: {
            text: '全国文化遗产地图',
            subtext: '虚构数据',
            x: 'center',
            textStyle: {
              color: 'rgba(255, 255, 255, 1)'
            }
          },
          tooltip: {
            trigger: 'item'
          },

          //左侧小导航图标
          visualMap: {
            show: true,
            x: 'left',
            y: 'center',
            splitList: [
              {start: 500, end: 600}, {start: 400, end: 500},
              {start: 300, end: 400}, {start: 200, end: 300},
              {start: 100, end: 200}, {start: 0, end: 100},
            ],
            color: ['#5475f5', '#9feaa5', '#85daef', '#74e2ca', '#e6ac53', '#9fb5ea'],
            textStyle: {
              color: 'rgba(255, 255, 255, 1)'
            }
          },

          //配置属性
          series: [{
            name: '文化遗产数据',
            type: 'map',
            mapType: 'china',
            roam: true,
            label: {
              normal: {
                show: true  //省份名称
                ,color:"#ff0000",
              },
              emphasis: {
                show: false
              }
            },
            data: [
              {name: '北京', value: Math.round(Math.random() * 500)},
              {name: '天津', value: Math.round(Math.random() * 500)},
              {name: '上海', value: Math.round(Math.random() * 500)},
              {name: '重庆', value: Math.round(Math.random() * 500)},
              {name: '河北', value: Math.round(Math.random() * 500)},
              {name: '河南', value: Math.round(Math.random() * 500)},
              {name: '云南', value: Math.round(Math.random() * 500)},
              {name: '辽宁', value: Math.round(Math.random() * 500)},
              {name: '黑龙江', value: Math.round(Math.random() * 500)},
              {name: '湖南', value: Math.round(Math.random() * 500)},
              {name: '安徽', value: Math.round(Math.random() * 500)},
              {name: '山东', value: Math.round(Math.random() * 500)},
              {name: '新疆', value: Math.round(Math.random() * 500)},
              {name: '江苏', value: Math.round(Math.random() * 500)},
              {name: '浙江', value: Math.round(Math.random() * 500)},
              {name: '江西', value: Math.round(Math.random() * 500)},
              {name: '湖北', value: Math.round(Math.random() * 500)},
              {name: '广西', value: Math.round(Math.random() * 500)},
              {name: '甘肃', value: Math.round(Math.random() * 500)},
              {name: '山西', value: Math.round(Math.random() * 500)},
              {name: '内蒙古', value: Math.round(Math.random() * 500)},
              {name: '陕西', value: Math.round(Math.random() * 500)},
              {name: '吉林', value: Math.round(Math.random() * 500)},
              {name: '福建', value: Math.round(Math.random() * 500)},
              {name: '贵州', value: Math.round(Math.random() * 500)},
              {name: '广东', value: Math.round(Math.random() * 500)},
              {name: '青海', value: Math.round(Math.random() * 500)},
              {name: '西藏', value: Math.round(Math.random() * 500)},
              {name: '四川', value: Math.round(Math.random() * 500)},
              {name: '宁夏', value: Math.round(Math.random() * 500)},
              {name: '海南', value: Math.round(Math.random() * 500)},
              {name: '台湾', value: Math.round(Math.random() * 500)},
              {name: '香港', value: Math.round(Math.random() * 500)},
              {name: '澳门', value: Math.round(Math.random() * 500)}
            ]  //数据
          }]
        });
      },
    }

  }
</script>

<style scoped>

</style>
