<template>
  <div class="index">
    <div>
      <ul>
        <li v-if="show" @mouseover="time(false,false)" @mouseout="time(false,true)">
          <div>
            <h1>物质文化遗产</h1>
            <p>有形文化遗产即传统意义上的“文化遗产”，根据《保护世界文化和自然遗产公约》（简称《世界遗产公约》），包括历史文物、历史建筑、人类文化遗址。</p>
            <p>
              物质文化遗产包括古遗址、古墓葬、古建筑、石窟寺、石刻、壁画、近代现代重要史迹及代表性建筑等不可移动文物，历史上各时代的重要实物、艺术品、文献、手稿、图书资料等可移动文物；以及在建筑式样、分布均匀或与环境景色结合方面具有突出普遍价值的历史文化名城（街区、村镇）。</p>
            <a href="#"><span>了解更多</span> <i class="el-icon-right"></i></a>
          </div>
          <div class="grid">
            <div><img src="/img/index/banner_1.jpg" alt=""></div>
            <div><img src="/img/index/banner_2.jpg" alt=""></div>
            <div><img src="/img/index/banner_3.jpg" alt=""></div>
            <div><img src="/img/index/banner_4.jpg" alt=""></div>
            <div><img src="/img/index/banner_5.jpg" alt=""></div>
            <div><img src="/img/index/banner_6.jpg" alt=""></div>
          </div>
        </li>
        <li v-if="show2" @mouseover="time(false,false)" @mouseout="time(false,true)">
          <div>
            <h1>非物质文化遗产</h1>
            <p>根据联合国教科文组织《保护非物质文化遗产公约》（Convention for the Safeguarding of the Intangible Cultural
              Heritage）的定义，无形文化遗产是指“被各群体、团体、有时为个人视为其文化遗产的各种实践、表演、表现形式、知识和技能及其有关的工具、实物、工艺品和文化场所。</p>
            <p>"非物质文化遗产"指被各群体、团体或有时为个人视为其文化遗产的各种实践、表演、表现形式、知识和技能及有关的工具、实物、工艺品和文化场所。</p>
            <a href="#"><span>了解更多</span> <i class="el-icon-right"></i></a>
          </div>
          <div class="grid">
            <div><img src="/img/index/banner1.jpg" alt=""></div>
            <div><img src="/img/index/banner4.jpg" alt=""></div>
            <div><img src="/img/index/banner1.jpg" alt=""></div>
            <div><img src="/img/index/banner4.jpg" alt=""></div>
            <div><img src="/img/index/banner5.jpg" alt=""></div>
            <div><img src="/img/index/banner6.jpg" alt=""></div>
          </div>
        </li>
      </ul>
      <ul>
        <li @click="(show=true,show2=false)" :class="{selected:show}" @mouseover="time($event,false)" @mouseout="time($event,true)"
          name="l1"></li>
        <li @click="(show=false,show2=true)" :class="{selected:show2}" name="l2" @mouseover="time($event,false)"
          @mouseout="time($event,true)"></li>
      </ul>
    </div>
    <div>
      <p>文化遗产保护包括物质文化遗产和非物质文化遗产</p>
      <p>我国文化遗产蕴含着中华民族特有的精神价值、思维方式、想象力</p>
      <p>体现着中华民族的生命力和创造力，是各民族智慧的结晶，也是全人类文明的瑰宝</p>
    </div>
    <div>
      <a href="/#/new"><img src="/img/index/4.jpg" alt=""></a>
      <a href="/#/Material"><img src="/img/index/5.jpg" alt=""></a>
      <a href="#/Intangible"><img src="/img/index/6.jpg" alt=""></a>
    </div>
    <div>
      <div>
        <ul>
          <li @mouseover="tab=0" :class="{tab:tab==0}">
            <h2>匠心精神</h2>
            <p>精湛的技术和精益求精的态度 <i class="el-icon-right"></i></p>
          </li>
          <li @mouseover="tab=1" :class="{tab:tab==1}">
            <h2>传统工艺</h2>
            <p>艺术要传承中创新 <i class="el-icon-right"></i></p>
          </li>
          <li @mouseover="tab=2" :class="{tab:tab==2}">
            <h2>传统文化</h2>
            <p>文，错画也，象交文 <i class="el-icon-right"></i></p>
          </li>
        </ul>
        <ul>
          <transition name="show">
            <li v-show="tab==0">
              <div @mouseover="pShow=0" @mouseout="pShow=false">
                <div>
                  <h3>敬业<i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===0">全身心投入的认认真真、尽职尽责的职业精神</p>
                  </el-collapse-transition>
                </div>
              </div>
              <div @mouseover="pShow=1" @mouseout="pShow=false">
                <div>
                  <h3>精益<i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===1">精益就是精益求精，是从业者对每件产品、每道工序都凝神聚力、精益求精、追求极致的职业品质</p>
                  </el-collapse-transition>
                </div>
              </div>
              <div @mouseover="pShow=2" @mouseout="pShow=false">
                <div>
                  <h3>专注<i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===2">专注就是内心笃定而着眼于细节的耐心、执着、坚持的精神</p>
                  </el-collapse-transition>
                </div>
              </div>
              <div @mouseover="pShow=3" @mouseout="pShow=false">
                <div>
                  <h3>创新<i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===3">“工匠精神”还包括着追求突破、追求革新的创新内蕴</p>
                  </el-collapse-transition>
                </div>
              </div>
            </li>
          </transition>
          <transition name="show">
            <li v-show="tab==1">
              <div @mouseover="pShow=0" @mouseout="pShow=false">
                <div>
                  <h3>传统工艺振兴计划 <i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===0">有助于传承与发展中华优秀传统文化，涵养文化生态，丰富文化资源，增强文化自信</p>
                  </el-collapse-transition>
                </div>
              </div>
              <div @mouseover="pShow=1" @mouseout="pShow=false">
                <div>
                  <h3>手工艺影响<i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===1">手工艺是一种创意打扮人们生活的文化，但随着人类现代生活方式的改变</p>
                  </el-collapse-transition>
                </div>
              </div>
              <div @mouseover="pShow=2" @mouseout="pShow=false">
                <div>
                  <h3>保护文化遗产<i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===2">传统手工艺和现代生活相结合，满足和适应现代生活的需要</p>
                  </el-collapse-transition>
                </div>
              </div>
              <div @mouseover="pShow=3" @mouseout="pShow=false">
                <div>
                  <h3>艺术的生命力<i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===3">传统文化只有经过与现代要素的重新组合，才能融入现代社会</p>
                  </el-collapse-transition>
                </div>
              </div>
            </li>
          </transition>
          <transition name="show">
            <li v-show="tab==2">
              <div @mouseover="pShow=0" @mouseout="pShow=false">
                <div>
                  <h3>文化含义<i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===0">文化是一种社会现象，是人们长期创造形成的产物。同时又是一种历史现象，是社会历史的积淀物。</p>
                  </el-collapse-transition>
                </div>
              </div>
              <div @mouseover="pShow=1" @mouseout="pShow=false">
                <div>
                  <h3>主要种类<i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===1">中华传统文化以儒家、佛家、道家三家之学为支柱, 包括思想、文字、语言，之后是六艺，也就是:礼、乐、射、御、书、数，再后是生活富足之后衍生出来的书法、音乐、武术、曲艺、棋类、节日、民俗等。</p>
                  </el-collapse-transition>
                </div>
              </div>
              <div @mouseover="pShow=2" @mouseout="pShow=false">
                <div>
                  <h3>传统工艺振兴计划 <i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===2">有助于传承与发展中华优秀传统文化，涵养文化生态，丰富文化资源，增强文化自信</p>
                  </el-collapse-transition>
                </div>
              </div>
              <div @mouseover="pShow=3" @mouseout="pShow=false">
                <div>
                  <h3>文化特点<i class="el-icon-right"></i></h3>
                  <el-collapse-transition>
                    <p v-show="pShow===3">世代相传，中国的传统文化在某些短暂的历史时期内有所中断，在不同的历史时期或多或少的有所改变，但是大体上没有中断过，总的来说变化不大。</p>
                  </el-collapse-transition>
                </div>
              </div>
            </li>
          </transition>
        </ul>
      </div>
    </div>
    <div>
      <div>
        <div>
          <div>
            <a href="#"><i class="el-icon-caret-left"></i></a>
            <h3>新闻动态</h3>
            <a href="/#/new"><i class="el-icon-caret-right"></i></a>
          </div>
          <a href="/#/new" class="iconMore">更多</a>
        </div>
        <ul>
          <li>
            <a href="#"><img src="/img/index/4.jpg" alt=""></a>
<!--            <span>文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</span>-->
          </li>
          <li v-for="(item,index) in info" :key="index">
            <a :href="'/#/articlesInfo/?tables=news&id='+item.id">{{item.title}}</a>
            <span>{{item.time}}</span>
          </li>
          <!-- <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-2</span></li>
          <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-3</span></li>
          <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-4</span></li>
          <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-5</span></li>
          <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-5</span></li>
          <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-5</span></li> -->
        </ul>
      </div>
      <div>
        <div>
          <div>
            <a href="#"><i class="el-icon-caret-left"></i></a>
            <h3>今日要闻</h3>
            <a href="#"><i class="el-icon-caret-right"></i></a>
          </div>
          <a href="/#/new" class="iconMore">更多</a>
        </div>
        <ul>
          <li>
            <a href="#"><img src="/img/index/5.jpg" alt=""></a>
<!--            <span>文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</span>-->
          </li>
          <li v-for="(item,index) in info2" :key="index">
            <a :href="'/#/articlesInfo/?tables=news&id='+item.id">{{item.title}}</a>
            <span>{{item.time}}</span>
          </li>
          <!-- <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-2</span></li>
          <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-3</span></li>
          <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-4</span></li>
          <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-5</span></li> -->
        </ul>
      </div>
      <div>
        <div>
          <div>
            <a href="#"><i class="el-icon-caret-left"></i></a>
            <h3>文化信息</h3>
            <a href="#"><i class="el-icon-caret-right"></i></a>
          </div>
          <a href="/#/Material" class="iconMore">更多</a>
        </div>
        <ul>
          <li>
            <a href="#"><img src="/img/index/6.jpg" alt=""></a>
<!--            <span>文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</span>-->
          </li>
          <li v-for="(item,index) in info2" :key="index">
            <a :href="'/view/news/'+item.id">{{item.title}}</a><span>{{item.created_at | time_at}}
          </span></li>
          <!-- <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-2</span></li>
          <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-3</span></li>
          <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-4</span></li>
          <li><a href="#">文化和旅游部印发《国家级非物质文化遗产代表性传承人认定与管理办法》</a><span>1990-1-5</span></li> -->
        </ul>
      </div>
    </div>
    <div>
      <myEcharts></myEcharts>
      <div>
        <div>
          <h1>【全国】</h1>
          <ul>
            <li @mouseover="tabChina=0" :class="{tabChina:(tabChina==0)}">国家代表性项目</li>
            <li @mouseover="tabChina=1" :class="{tabChina:(tabChina==1)}">国家代表性传承人</li>
          </ul>
          <ul>
            <li v-show="tabChina==0">
              <div>
                <div>
                  <h2>231</h2>
                  <p>民间文学</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统音乐</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统舞蹈</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统戏剧</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统体育、游艺与杂技</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>曲艺</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统美术</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统技艺</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统医药</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>民俗</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统文字</p>
                </div>
              </div>
            </li>
            <li v-show="tabChina==1">
              <div>
                <div>
                  <h2>32</h2>
                  <p>民间文学</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统音乐</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统舞蹈</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统戏剧</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统体育、游艺与杂技</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>曲艺</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统美术</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统技艺</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统医药</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>民俗</p>
                </div>
              </div>
              <div>
                <div>
                  <h2>231</h2>
                  <p>传统文字</p>
                </div>
              </div>
            </li>
          </ul>
        </div>

      </div>
    </div>

  </div>
</template>

<script>
  import myEcharts from "./Echarts/myEcharts";

  export default {
    name: 'index',
    data() {
      return {
        show: true,
        show2: false,
        timer: '',
        tab: 0,
        pShow: false,
        tabChina:0,
        info:null,
        info2:null,
        info3:null
      }
    },
    methods: {
      time(event, go = true) {

        if (go) {
          this.timer = setInterval(() => {
            this.show = !this.show;
            this.show2 = !this.show2;
          }, 3000)
        } else {
          if (event) {
            let child = event.target.attributes.name.value;
            /*console.log(event);*/
            if (child === "l1") {
              this.show = true;
              this.show2 = false;
            } else if (child === "l2") {
              this.show2 = true;
              this.show = false;
            }
          }
          clearInterval(this.timer);
        }
      },
    },
    created() {
      this.$nextTick(() => {
        this.time(event, true);
      })
    }, mounted() {
      axios.get('/view/newInfo/News/4').then(response => {
        this.info=response['data']['data']
        });
        axios.get('/view/newInfo/News/4/today').then(response => {
          this.info2=response['data']['data']
          });
          axios.get('/view/newInfo/Culture/4/today').then(response => {
            this.info2=response['data']['data']
            });
    },
    components: {
      myEcharts
    },
    filters: {
      time_at(val){
          return val.match(/^.+(?<= )/ig)[0];
      }
    }
  }
</script>
<style lang="less" type="text/less" scoped>
  * {
    box-sizing: border-box;
  }

  a {
    text-decoration: none;
  }

  li {
    list-style: none;
  }

  img {
    width: 100%;
    display: block;
  }

  .index {
    width: 100%;
    overflow: hidden;

    > div:nth-of-type(1) {
      position: relative;

      > ul:nth-of-type(1) {
        > li {
          display: grid;
          grid-template-rows: repeat(2, auto);
          grid-template-columns: repeat(2, 50%);
          background-color: #1d365d;
          align-items: center;
          overflow: hidden;

          > div:nth-of-type(1) {
            /*width: 100%;*/
            color: white;
            padding: 0 10px;
            /*place-items:center;*/
            /*height: 100%;*/

            > h1 {
              text-align: center;
            }

            > img {
              width: 100%;
            }

            > p {
              text-indent: 2em;
            }

            > a {
              display: block;
              color: white;
              text-align: center;
              font-size: 1.2rem;
              padding-left: 0;

              i, span {
                transition: all 0.3s linear;
              }

              &:hover i {
                padding-left: 15px;
              }

              &:hover span {
                padding-left: 15px;
              }

            }
          }

          div:nth-of-type(2) {
            img {
              width: 100%;
            }
          }
        }
      }

      > ul:nth-of-type(2) {
        position: absolute;
        display: flex;
        justify-content: center;
        left: 0;
        bottom: 0;
        width: 100%;

        > li {
          display: inline-block;
          background-color: #fff;
          width: 30px;
          height: 8px;
          margin: 0 5px;
          border-radius: 25px;
          opacity: 0.5;
          cursor: pointer;
        }
      }
    }

    > div:nth-of-type(2) {
      text-align: center;
      margin: 5rem 0;

      p {
        margin: 1rem 0;
        color: #5f6464;
        font-size: 1.3em;
        font-family: '黑体';
        font-style: italic;
      }
    }

    > div:nth-of-type(3) {
      display: flex;
      justify-content: center;
      align-items: center;

      img {
        width: 100%;
        transition: all 0.5s;
      }

      > a {
        display: block;
        width: 400px;
        margin: 0 20px;
        position: relative;
        overflow: hidden;

        &::after {
          content: '物质遗产';
          display: flex;
          justify-content: center;
          align-items: center;
          font-size: 2rem;
          font-style: italic;
          position: absolute;
          color: #fff;
          right: 0;
          left: 0;
          top: 0;
          bottom: 0;
          background-color: rgba(0, 0, 0, 0.1);
          transition: all 0.3s;
        }

        &::before {
          content: '';
          position: absolute;
          width: 100%;
          height: 20%;
          top: (100%-20%)/2;
          color: red;
          background-color: #fff;
          z-index: 1;
          opacity: 0;
          transition: all 0.5s;
        }

        &:hover::after {
          background-color: rgba(0, 0, 0, 0.5);
          font-size: 2.1rem;
        }

        &:hover::before {
          opacity: 0.2;
          transform: scale(1.5);
        }

        &:hover img {
          transform: scale(1.3);
        }

      }

      > a:nth-of-type(1) {
        &::after {
          content: '新闻';
        }
      }

      > a:nth-of-type(3) {
        &::after {
          content: '非物质遗产';
        }
      }

    }

    > div:nth-of-type(4) {
      margin: 80px 0;
      background-color: #1b1f25;

      > div {
        margin: 0 auto;
        width: 80%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        color: #fff;
        overflow: hidden;

        > ul:nth-of-type(1) {
          box-sizing: border-box;
          width: 30%;

          i {
            font-size: 35px;
            transition: all 0.3s;

          }

          > li {
            margin: 50px 0;
            border: 1px solid transparent;
            color: #808080;

            > h2 {
              font-size: 2em;
              font-family: '黑体';
              /*margin: 10px 0;*/
              padding-left: 0px;
              transition: all 0.3s;
              border-left: 0 solid #1d365d;
            }

            > p {
              font-style: italic;
              /*margin: 10px 0;*/
              font-family: '微软雅黑';
            }

            &:hover > h2 {
              padding-left: 10px;
              border-left: 7px solid blue;
              border-radius: 20px;
              color: #fff;
            }

            &:hover > p {
              color: #fff;
            }

            &:hover i {
              padding-left: 20px;

            }
          }

        }

        > ul:nth-of-type(2) {
          width: 70%;
          height: 600px;

          > li {
            display: grid;
            grid-template-columns: repeat(2, 50%);
            grid-template-rows: repeat(2, 50%);
            width: 100%;
            height: 100%;
            color: #fff;
            /*transition: all 0.3s;*/
            margin-bottom: 300px;

            > div {
              overflow: hidden;
              background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('/img/index/banner_5.jpg');
              background-size: cover;
              background-repeat: no-repeat;
              background-position: 50% 50%;
              position: relative;
              width: 100%;

              i {
                opacity: 0;
                transition: all 0.3s;
              }

              &:hover > div > h3 > i {
                opacity: 1;
                padding-left: 20px;
              }

              > div {
                background-color: rgba(0, 0, 0, 0.7);
                position: absolute;
                bottom: 0;
                left: 0;
                width: 100%;
                padding: 20px 20px 5px 20px;


                > h3 {
                  font-family: '黑体';
                  font-style: oblique;
                  font-size: 1.5em;
                  margin-bottom: 10px;
                }
              }
            }

            img {
              display: block;
              width: 100%;
              height: 100%;
            }
          }

          > li:nth-of-type(2) {
            > div {
              background: linear-gradient(rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.1)), url('/img/index/1.jpg');
              background-size: cover;
              background-repeat: no-repeat;
              background-position: center center;
            }
          }
          > li:nth-of-type(3) {
            > div {
              background: linear-gradient(rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.1)), url('/img/index/6.jpg');
              background-size: cover;
              background-repeat: no-repeat;
              background-position: center center;
            }
          }
        }
      }
    }

    > div:nth-of-type(5) {
      width: 80%;
      margin: 20px auto;
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 30px;
      overflow: hidden;

      > div {
        overflow: hidden;

        > div:nth-of-type(1) {
          width: 100%;

          display: flex;
          justify-content: space-between;
          align-items: center;

          > div:nth-of-type(1) {
            display: flex;
            align-items: center;

            h3 {
              font-size: 1.5em;
              margin: 0 20px;
              font-family: '黑体';
            }

            i {
              color: #fff;
              background-color: #7e7e7e;
              border-radius: 50%;
              padding: 5px;
              font-size: 20px;
              border: 1px solid #fff;
            }

            a:hover i {
              background-color: #9a2929;
            }

          }
        }

        > ul:nth-of-type(1) {
          > li {
            > a {
              color: #000;

              &:hover {
                color: #9a2929;
                text-decoration: underline;
              }
            }
          }

          > li:not(:first-of-type) {
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: relative;
            margin: 15px 0;

            > a {
              width: 80%;
              white-space: nowrap;
              overflow: hidden;
              text-overflow: ellipsis;
            }

            > span {
              /*flex:30%;*/
              width: 20%;
              text-align: right;
            }

          }

          > li:nth-of-type(1) {
            margin: 30px 0;
            position: relative;

            > span {
              position: absolute;
              width: 100%;
              bottom: 0;
              white-space: nowrap;
              overflow: hidden;
              text-overflow: ellipsis;
            }
          }
        }
      }
    }

    > div:nth-of-type(6) {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-top: 40px;
      background-color: rgba(0, 0, 0, 0.1);
      background-image: url('/img/index/2.jpg');
      background-repeat: no-repeat;
      background-size: cover;
      padding: 20px 10px;

      > div {
        width: 100%;
      }

      > div:nth-of-type(1) {
        display: flex;
        justify-content: center;
      }

      > div:nth-of-type(2) {
        > div {
          background-color: rgba(158, 140, 115, 0.5);
          width: 80%;
          margin: 0 auto;
          text-align: center;
          color: #fff;

          > ul:nth-of-type(1) {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px 0;
            margin: 10px 0;
            border-bottom: 1px solid rgba(255, 237, 207, 0.5);
            cursor: pointer;
            color: #cac2c2;

            > li {
              margin: 0 20px;
              position: relative;
              transition: all 0.2s;

              &::after {
                content: '';
                position: absolute;
                border: 10px solid transparent;
                border-bottom-color: rgba(255, 237, 207, 0.5);
                bottom: -10px;
                left: ( 100% - 10px ) / 2;
                opacity: 0;
                transition: all 0.2s;
              }
            }
          }

          > ul:nth-of-type(2) {
            > li{
              display: grid;
              grid-template-rows: repeat(4, 1fr);
              grid-template-columns: repeat(3, 1fr);
              grid-auto-flow: row dense;
              height: 480px;
              place-items: center;
              gap: 10px;


              > div {
                width: 100%;
                background-color: #b3a087;
                height: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                overflow: hidden;
                transition:all 0.2s ease-in-out;
                cursor: pointer;
                border: 1px solid #b3a087;

                &:hover {
                  transform: scale(1.1);
                  z-index: 1;
                  border: 1px solid #9e8c73;
                }
              }

              /*>div:nth-of-type(7){*/
              /*  grid-area: ~"3 / 1 / 5 / 2";*/
              /*  width: 100%;*/
              /*  text-align: center;*/
              /*}*/

              > div:nth-of-type(5) {
                grid-area: ~"2 / 2 / 4 / 3";
                width: 100%;
                text-align: center;
                position: relative;
                z-index: 1;
                color: #fff;

                &::after {
                  position: absolute;
                  top: 0;
                  bottom: 0;
                  left: 0;
                  right: 0;
                  content: '';
                  background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url('/img/index/3.jpg');
                  background-position: 50% 50%;
                  -webkit-background-size: cover;
                  background-size: cover;
                  filter: blur(3px);
                  z-index: -10;
                }
              }

              > div:nth-of-type(10) {
                grid-area: ~"4 / 3 / 5 / 4";
                width: 100%;
                text-align: center;
              }
            }
          }
        }
      }
    }
  }

  .grid {
    display: grid;
    /*gap:20px;*/
    font-size: 0;
    grid-template-rows: repeat(2, 1fr);
    grid-template-columns: repeat(3, 1fr);
    place-items: center;
  >div{
    width:317px;
    height:168px;
    img{
      width:100%;
    }
  }
  }

  .selected {
    background-color: red !important;
  }

  .show-enter-active, .show-leave-active {
    transition: opacity .2s;
  }

  .show-enter, .show-leave-to {
    opacity: 0;
  }

  .tab {
    h2 {
      color: #fff;
    }

    p {
      color: #fff;
    }
  }
  .tabChina{
    color:#ffedcf;
    &::after{
      opacity: 1!important;
    }
  }
  .iconMore{
    position: relative;
    /*width: 50px;*/
    padding-right: 20px;
    &::before,&::after{
      content: '';
      background-image: url('/img/icon/1.png');
      width: 21px;
      height: 21px;
      position: absolute;
      background-repeat: no-repeat;
    }
    &::before{

      left: -20px;
      top:-5px;
    }
    &::after{
      right: 0px;
      bottom:-5px;
      background-position: -21px 0;
    }
    &:hover{
      color:#9a2929;
    }
    &:hover::after{
      background-position: -21px -21px;
    }
    &:hover::before{
      background-position: 0px -21px;
    }
  }
</style>
