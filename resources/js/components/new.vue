<template>
  <div class="new">
    <div>
      <div>
        <div>
          <div class="title">
            <h3>今日要闻</h3>
            <span>{{ this.date()}}</span>
          </div>
          <!-- today in info -->
          <!-- <div><a :href="'new/?id='+item.id" v-for="(item,index) in info" :key="index">{{item.title}}</a></div> -->
          <div>
            <router-link :to="{path: '/articlesInfo', query:{'tables':'news','id':item.id}}" v-for="(item,index) in info" :key="index">{{ item.title }}</router-link>
          </div>

        </div>
        <div>
          <el-carousel height="260px">
            <el-carousel-item v-for="(item,index) in todayBack" :key="index"
                              :style="'background-image:'+'url('+item.img+')'">
              <a :href="'/new/?id='+item.id"><h3 class="small">{{ item.title }}</h3></a>
            </el-carousel-item>

          </el-carousel>
        </div>
      </div>
      <div>
        <div>
          <div class="son_title">
            <h3>话题</h3>
            <a class="iconMore">更多</a>
          </div>
          <div>
            <a :href="'new/?id='+topic[0].id" class="son_first">
              <img :src="topic[0].img" alt="">
              <p>{{topic[0].title}}</p>
            </a>
            <!-- topic in info2 -->
            <!-- <a :href="'new/?id='+item.id" v-for="(item,index) in info2" :key="index">{{item.title}}</a> -->
            <router-link :to="{path: '/articlesInfo', query:{'tables':'news','id':item.id}}" v-for="(item,index) in info2" :key="index">{{ item.title }}</router-link>


            <a :href="'new/?id='+item.id" v-for="(item,index) in topic" :key="index+1">{{item.title}}</a>

          </div>
        </div>
        <div>
          <div class="son_title">
            <h3>文化新闻</h3>
            <a class="iconMore">更多</a>
          </div>
          <div>
            <!-- topic in info3 -->
            <!-- <a :href="'new/?id='+item.id" v-for="(item,index) in info3" :key="index">{{item.title}}</a> -->
            <router-link :to="{path: '/articlesInfo', query:{'tables':'news','id':item.id}}" v-for="(item,index) in info3" :key="index">{{ item.title }}</router-link>


            <a :href="'new/?id='+item.id" v-for="(item,index) in topic" :key="index+1">{{item.title}}</a>
            <a :href="'new/?id='+topic[0].id" class="son_first">
              <img :src="topic[1].img" alt="">
              <p>{{topic[0].title}}</p>
            </a>
          </div>
        </div>
        <div>
          <div class="son_title">
            <h3>要闻</h3>
            <a class="iconMore">更多</a>
          </div>
          <div>
            <div>
              <div>
                <video id="video" muted controls="controls" v-show="video==1"
                       @mouseout="video=0,videoAction($event,'1')" @mouseover="videoAction($event,'play')">
                  <source src="/video/video.mp4">
                  <a href="#">你的浏览器不支持video</a>
                </video>
                <img src="/img/index/1.jpg" alt="" id="img" v-show="video==0" @mouseover="video=1">
                <el-button icon="el-icon-video-play" circle type="primary" v-show="video==0"></el-button>
              </div>
              <div>
                <video id="video2" muted controls="controls" v-show="video2==2"
                       @mouseout="video2=3,videoAction($event,'1')" @mouseover="videoAction($event,'play')">
                  <source src="/video/video.mp4">
                  <a href="#">你的浏览器不支持video</a>
                </video>
                <img src="/img/index/1.jpg" alt="" id="img2" v-show="video2==3" @mouseover="video2=2">
                <el-button icon="el-icon-video-play" circle type="primary" v-show="video2==3"></el-button>
              </div>
            </div>

            <a :href="'new/?id='+item.id" v-for="(item,index) in topic" :key="index+1">{{item.title}}</a>
            <!-- <a :href="'new/?id='+item.id" v-for="(item,index) in info4" :key="index">{{item.title}}</a> -->
            <router-link :to="{path: '/articlesInfo', query:{'tables':'news','id':item.id}}" v-for="(item,index) in info4" :key="index">{{ item.title }}</router-link>

          </div>
        </div>
      </div>
      <div @mouseover="tabShow=1" @mouseout="tabShow=0">
        <h1><span>快报</span> <span>{{this.date()}}</span></h1>
        <ul id="tab">
          <li v-for="(item,index) in todayBack" :key="index+1">
            <a :href="'new/?id='+item.id">
              <img :src="item.img" alt="">
              <h3>{{item.title}}12313123123123213</h3>
              <p>[阅读]</p>
            </a>
          </li>

      <li v-for="(item,index,k) in info5" :key="k">
            <a :href="'/#/articlesInfo/?tables=news&id='+item.id">
              <img :src="urls(item.content)[0]||'/img/index/1.jpg'" alt="">
              <h3>{{item.title}}</h3>
              <p>[阅读]</p>
            </a>
    <!-- <router-link :to="{path: '/articlesInfo', query:{'tables':'news','id':item.id}}" v-for="(item,index,k) in info5" :key="k">
      <img :src="urls(item.content)[0]||'/img/index/1.jpg'" alt="">
              <h3>{{item.title}}</h3>
              <p>[阅读]</p>
      </router-link> -->

          </li>

        </ul>
        <div class="button" v-show="tabShow==1">
          <button class="left" @click="next()"> &lt; </button>
          <button class="right" @click="last()"> &gt; </button>
        </div>
      </div>
    </div>
  </div>

</template>

<script>
// import { watch } from 'fs';
  export default {
    name: "new",
    data() {
      return {
        today: [{"title": '新时期非物质文化遗产记录和保护的实践与思考', "id": '1'}
          , {"title": '1分钟知非遗事·非遗半月报第48期', "id": '2'}
          , {"title": '牙买加将承办第十五届非物质文化遗产委员会会议', "id": '3'}
          , {"title": '牙买加将承办第十五届非物质文化遗产委员会会议', "id": '4'}
          , {"title": '牙买加将承办第十五届非物质文化遗产委员会会议', "id": '5'}
          , {"title": '牙买加将承办第十五届非物质文化遗产委员会会议', "id": '6'}]
        , todayBack: [{'title': '新时期非物质文化遗产记录和保护的实践与思考', "img": '/img/index/1.jpg', "id": '1'},
          {'title': '1分钟知非遗事·非遗半月报第48期', "img": '/img/index/1.jpg', "id": '2'},
          {'title': '牙买加将承办第十五届非物质文化遗产委员会会议', "img": '/img/index/1.jpg', "id": '3'},
          {'title': '新时期非物质文化遗产记录和保护的实践与思考', "img": '/img/index/1.jpg', "id": '4'},]
        , topic: [{'title': '新时期非物质文化遗产记录和保护的实践与思考', "img": '/img/index/1.jpg', "id": '1'},
          {'title': '1分钟知非遗事·非遗半月报第48期', "img": '/img/index/1.jpg', "id": '2'},
          {'title': '牙买加将承办第十五届非物质文化遗产委员会会议', "img": '/img/index/1.jpg', "id": '3'},
          {'title': '新时期非物质文化遗产记录和保护的实践与思考', "img": '/img/index/1.jpg', "id": '4'},
          {'title': '新时期非物质文化遗产记录和保护的实践与思考', "img": '/img/index/1.jpg', "id": '5'}]
        , video: 1
        , video2: 2
        , timer: ''
        , sum:0
        , tabShow:0
        ,info:null,
        info2:null,
        info3:null,
        info4:null,
        info5:null,
      }
    },
    methods: {
      date() {
        let day = new Date().getDate();
        let month = new Date().getMonth() + 1;
        let year = new Date().getFullYear();
        let week = new Date().getDay();
        let weekCn = ['一', '二', '三', '四', '五', '六', '天'];
        return year + "年" + month + "月" + day + "日" + "  " + "星期" + weekCn[week - 1];
      },
      videoImg() {
        const vm = this;
        let img = document.querySelector('#img');
        let img2 = document.querySelector('#img2');
        let video = document.querySelector('#video');
        let video2 = document.querySelector('#video2');

        let canvas = document.createElement('canvas');
        let canvas2 = document.createElement('canvas');

        setTimeout(() => {
          canvas.width = video.videoWidth;
          canvas.height = video.videoHeight;
          canvas.getContext('2d').drawImage(video, 0, 0, canvas.width, canvas.height);
          img.src = canvas.toDataURL();
          vm.video = 0;

          canvas2.width = video2.videoWidth;
          canvas2.height = video2.videoHeight;
          canvas2.getContext('2d').drawImage(video2, 0, 0, canvas2.width, canvas2.height);
          img2.src = canvas2.toDataURL();
          vm.video2 = 3;
        }, 800)

      },
      videoAction(id, action) {
        let video = document.querySelector("#" + id.target.id);
        if (action === "play") {
          this.$nextTick(() => {
            video.play();
          });
        } else if (action) {
          this.$nextTick(() => {
            video.pause();
            video.currentTime = 0;
          })
        }

      },
      go(direction, distance, id) {
        // let item=document.querySelector('#'+id);
        let vm = this;
        clearInterval(vm.timer);
        let tab = document.querySelector('#tab');
        let father = tab.parentElement;
        let son = tab.childElementCount;
        let end = tab.scrollWidth - father.offsetWidth;
        // console.log(father.offsetWidth);
        // console.log(tab.scrollWidth);
        // console.log(end);
        let w = 410, sum = 0;
        vm.timer = setInterval(function () {
          sum -= w;
          tab.style.transform = 'translateX(' + sum + 'px)';
          // console.log(tab.style.transform);
          // if(tab.style.transform==="translateX(-410px)"){
          //   sum=w;
          // }
          let translateX = tab.style.transform.replace(/[^\d.]/g, '');
          // console.log(tab.scrollWidth-(tab.scrollWidth-(3*410+end)));
          // console.log(tab.scrollWidth / 410);
          if (translateX >= tab.scrollWidth - father.offsetWidth + tab.scrollWidth / son) {
            sum = 410;
          }
        }, 3200);
      },
      next() {
        clearInterval(this.timer);
        let tab = document.querySelector('#tab');
        let father = tab.parentElement;
        let son = tab.childElementCount;
        let w=tab.scrollWidth / son,sum=0;
        let translateX = tab.style.transform.replace(/[^\d.]/g, '');

        let time=setTimeout(()=>{
          sum =w+ +translateX;
          tab.style.transform = 'translateX(' + sum + 'px)';
          if(translateX>0){
            tab.style.transform = 'translateX(' + 0 + 'px)';
          }
        },1000);
        let go=setTimeout(()=>{
          clearTimeout(go);
          this.go();
        },3000)


      },
      last() {
        clearInterval(this.timer);
        let tab = document.querySelector('#tab');
        let father = tab.parentElement;
        let son = tab.childElementCount;
        let w=tab.scrollWidth / son,sum=0;
        let translateX = tab.style.transform.replace(/[^\d.]/g, '');

        let time=setTimeout(()=>{
          sum = -(+translateX + w);
          tab.style.transform = 'translateX(' + sum + 'px)';
          if (translateX >= tab.scrollWidth - father.offsetWidth + tab.scrollWidth / son) {
            sum = 410;
          }
        },1000);
        let go=setTimeout(()=>{
          clearTimeout(go);
          this.go();
        },3000)
      },
      urls(str){
    //图片url地址
    let imgReg = /<img.*?(?:>|\/>)/gi;
    let srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
    let arr = str.match(imgReg);  // arr 为包含所有img标签的数组
    let srcArr = [];
    for (let i = 0; i < arr.length; i++) {
      let src = arr[i].match(srcReg);
      //获取图片地址
      srcArr.push(src[1]);
    }
    srcArr['str'] = srcArr.join(',');//字符串地址以逗号分割
    return srcArr;
  }
    }
    , mounted() {
      this.videoImg()
      axios.get('/view/newInfo/News/5/today').then(response => {
        this.info=response['data']['data']
        });
        axios.get('/view/newInfo/News/5/ht').then(response => {
        this.info2=response['data']['data']
        });
        axios.get('/view/newInfo/News/5/whxw').then(response => {
        this.info3=response['data']['data']
        });
        axios.get('/view/newInfo/News/5/yw').then(response => {
        this.info4=response['data']['data']
        });
        axios.get('/view/newInfo/all').then(response => {
        this.info5=response['data']
        console.log(this.urls(this.info5[0].content)['str']);
        });
    },
    created() {
      this.$nextTick(() => {
        this.go();
      })
    }
  }
</script>

<style lang="less" type="text/less" scoped>
  li {
    list-style: none;
  }

  a {
    text-decoration: none;
    color: black;

    &:hover {
      color: #9a2929;
      text-decoration: underline;
    }
  }

  .new {
    > div:nth-of-type(1) {
      width: 70%;
      margin: 0 auto;

      > div:nth-of-type(1) {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 40px;

        > div:nth-of-type(1) {
          > div:nth-of-type(2) {
            > a:nth-of-type(1) {
              font-weight: 600;
              font-size: 1.4em;
            }

            > a:nth-of-type(2) {
              font-weight: 600;
              font-size: 1.3em;
            }

            > a {
              display: block;
              color: #000;
              font-size: 1.2em;
              margin: 10px 0;
              border-bottom: 1px dashed rgba(0, 0, 0, 0.2);
              white-space: nowrap;
              overflow: hidden;
              text-overflow: ellipsis;

              &:hover {
                color: #9a2929;
                text-decoration: underline;
              }
            }
          }

        }


      }

      > div:nth-of-type(2) {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 20px;
        margin-top: 30px;

        a {
          display: block;
        }

        > div {
          > div:nth-of-type(2) {
            a {
              margin: 15px 0;
              padding-left: 10px;
              white-space: nowrap;
              overflow: hidden;
              text-overflow: ellipsis;
            }
          }

          .son_first {
            display: flex;
            justify-content: space-between;
            align-items: center;
            white-space: initial !important;
            padding-left: 0 !important;

            p {
              width: 50%;

              padding: 5px;
            }

            img {
              width: 50%;
              box-sizing: border-box;
            }
          }
        }

        > div:nth-of-type(3) {
          > div:last-of-type {
            > div:first-of-type {
              display: flex;
              justify-content: space-between;
              align-items: center;

              > div {
                width: 50%;
                position: relative;
                box-sizing: border-box;
                padding: 10px;

                button {
                  position: absolute;
                  left: 13px;
                  bottom: 13px;
                }

              }

              img {
                width: 100%;
                display: block;
              }

              video {
                width: 100%;
                display: block;

              }
            }
          }

        }

      }

      > div:nth-of-type(3) {
        margin-top: 30px;
        overflow: hidden;
        position: relative;
>h1{
  color: #1d68a7;
  display: flex;
  border-bottom: 1px solid #1d68a7;
  width: 100%;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
  >span:first-of-type{
    border-bottom: 3px solid #1d365d;
  }
  >span:last-of-type{
    font-size: 16px;
  }
}
        > ul {
          display: flex;
          justify-content: space-between;
          align-items: center;
          width: 100%;
          transition: all 3s;
          /*transform: translateX(-30px);*/

          li {
            box-sizing: border-box;
            padding: 0 10px 0 0;
          }

          h3 {
            width: 400px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
          }
        }

        > div {
          position: absolute;
          z-index: 1;
          left: 0;
          top: 60%-40%;
          width: 100%;
          height: 60%;
          display: flex;
          justify-content: space-between;
          align-items: center;
          transition: all 0.3s;


          button {
            width: 40px;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            border: none;
            color: #fff;
            font-size: 2em;
            transition: all 0.3s;

            &:hover {
              background-color: rgba(255, 255, 255, 1);
              color: #000;
            }
          }

          > button:nth-of-type(1) {
            border-radius: 0 20px 20px 0;
          }

          > button:nth-of-type(2) {
            border-radius: 20px 0 0 20px;
          }
        }

        img {
          width: 400px;
          display: block;
        }
      }
    }

  }

  .el-carousel__item {
    background-repeat: no-repeat;
    background-position: center center;
    -webkit-background-size: cover;
    background-size: cover;

    a {
      width: 100%;
      height: 100%;
      display: flex;
      align-items: flex-start;
      justify-content: center;

      &:hover h3::after {
        opacity: 0.8;
      }
    }
  }

  .el-carousel__item h3 {
    color: #fff;
    text-align: center;
    padding: 10px 0;
    position: relative;
    width: 100%;

    &::after {
      content: '';
      display: block;
      background-color: #000;
      width: 100%;
      height: 100%;
      position: absolute;
      left: 0;
      right: 0;
      top: 0;
      z-index: -1;
      opacity: 0.4;
      transition: 0.3s;
    }
  }

  .title {
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid lightgrey;

    h3 {
      color: #5184eb;
      border-bottom: 3px solid blue;
      padding-bottom: 5px;
      font-size: 1.25em;
    }
  }

  .son_title {
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: relative;

    h3 {
      color: #5184eb;
      padding-bottom: 5px;
      padding-right: 5px;
      font-size: 1.25em;
      background-color: #fff;
      font-weight: 500;

      &:after {
        position: absolute;
        content: '';
        width: 100%;
        border-bottom: 1px dashed rosybrown;
        left: 0;
        top: (100% - 1px )/2;
        z-index: -2;
      }
    }
  }

  .iconMore {
    position: relative;
    /*width: 14%;*/
    width: 50px;
    color: #1d68a7;
    padding-left: 18px;
    background-color: #fff;

    &::before, &::after {
      content: '';
      background-image: url('/img/icon/1.png');
      width: 21px;
      height: 21px;
      position: absolute;
      background-repeat: no-repeat;
    }

    &::before {

      left: 0px;
      top: -5px;
    }

    &::after {
      right: 0px;
      bottom: -5px;
      background-position: -21px 0;
    }

    &:hover {
      color: #9a2929;
      text-decoration: none;
    }

    &:hover::after {
      background-position: -21px -21px;
    }

    &:hover::before {
      background-position: 0px -21px;
    }
  }
</style>
