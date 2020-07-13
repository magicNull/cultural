<template>
  <div class="Material">
    <div>
      <div>
        <!-- info in banner -->
        <a
          v-for="(item,index) in info"
          :key="index"
          :style="'background-image:url('+item.portrait+')'"
        >
          <div>{{item.title}}</div>
        </a>
      </div>
    </div>
    <div>
      <div>
        <div>
          <img src="/img/Material/video.jpg" alt />
        </div>
        <div>
          <div>
            <h1 class="iconTitle">视频</h1>
            <a class="iconMore">更多</a>
          </div>
          <div>
            <!-- video in info2 -->
            <div v-for="(item) in info2" :key="item.id">
              <a :href="'/#/videoInfo?tables=video&id='+item.id">
                <div>{{item.title}}</div>
                <div>{{item.intro}}</div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div>
      <div>
        <h1 class="iconTitle">
          音频
          <a href></a>
          <ul>
            <!-- audio in info3 -->
            <li v-for="(item,index) in info3" :key="index+1.11">
              <a :href="'audio/?id='+item.id">
                <!-- {{item.name}} -->
                <audio :src="item.portrait" controls="controls"></audio>
              </a>
            </li>
          </ul>
        </h1>
      </div>
      <div>
        <el-card :body-style="{ padding: '0px' }">
          <img src="/img/index/1.jpg" style="width:300px;" />
          <div style="padding: 14px;">
            <h4>hover 音频</h4>
          </div>
        </el-card>
      </div>
      <div>
        <el-card :body-style="{ padding: '0px' }">
          <img style="width:300px;" src="/img/index/2.jpg" />
          <div style="padding: 14px;">
            <h4>文化</h4>
          </div>
        </el-card>
      </div>
      <div>
        <el-card :body-style="{ padding: '0px' }">
          <img style="width:300px;" src="/img/index/3.jpg" />
          <div style="padding: 14px;">
            <h4>传统</h4>
          </div>
        </el-card>
      </div>
      <div>
        <el-card :body-style="{ padding: '0px' }">
          <img style="width:300px;" src="/img/index/6.jpg" />
          <div style="padding: 14px;">
            <h4>画</h4>
          </div>
        </el-card>
      </div>
    </div>
    <div>
      <h1 class="iconTitle">图集</h1>
      <div>
        <el-card :body-style="{ padding: '0px' }" v-for="(item,index) in info4" :key="index+1.111">
          <img style="width: 236px;height: 236px;" :src="item.portrait" />
          <div style="padding: 14px;">
            <h4>{{item.title}}</h4>
          </div>
        </el-card>
        <!--
     <el-card :body-style="{ padding: '0px' }">
        <img src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png">
        <div style="padding: 14px;">
          <h4>古筝</h4>
        </div>
      </el-card>
      <el-card :body-style="{ padding: '0px' }">
        <img src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png">
        <div style="padding: 14px;">
          <h4>古筝</h4>
        </div>
      </el-card>
      <el-card :body-style="{ padding: '0px' }">
        <img src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png">
        <div style="padding: 14px;">
          <h4>古筝</h4>
        </div>
        </el-card>-->
      </div>
      <div>
        <a href class="iconMore">查看更多</a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Material",
  data() {
    return {
      banner: [
        {
          id: 1,
          img: "/img/index/1.jpg",
          title: "中国非物质文化遗产年俗文化展示"
        },
        {
          id: 2,
          img: "/img/index/1.jpg",
          title: "中国非物质文化遗产年俗文化展示"
        },
        {
          id: 3,
          img: "/img/index/1.jpg",
          title: "中国非物质文化遗产年俗文化展示"
        },
        {
          id: 4,
          img: "/img/index/1.jpg",
          title: "中国非物质文化遗产年俗文化展示"
        }
      ],
      video: [
        {
          id: 1,
          title: "2019年“文化和自然遗产日”宣传片",
          content: "6月7日晚，由文化和旅游部、广东省人民政府主办的2019年"
        },
        {
          id: 2,
          title: "2019年“文化和自然遗产日”宣传片",
          content: "6月7日晚，由文化和旅游部、广东省人民政府主办的2019年"
        },
        {
          id: 3,
          title: "2019年“文化和自然遗产日”宣传片",
          content: "6月7日晚，由文化和旅游部、广东省人民政府主办的2019年"
        },
        {
          id: 4,
          title: "2019年“文化和自然遗产日”宣传片",
          content: "6月7日晚，由文化和旅游部、广东省人民政府主办的2019年"
        }
      ],
      audio: [
        { id: 1, name: "古筝" },
        { id: 2, name: "古琴" },
        { id: 3, name: "丝竹" },
        { id: 4, name: "鼓乐" },
        { id: 5, name: "更多" }
      ],
      info: null,
      info2: null,
      info3: null,
      info4: null
    };
  },
  mounted() {
    axios.get("/view/newInfo/Culture/4/zg").then(response => {
      this.info = response["data"]["data"];
    });
    axios.get("/view/newInfo/Culture/4/video").then(response => {
      this.info2 = response["data"]["data"];
    });
    axios.get("/view/newInfo/Culture/4/audio").then(response => {
      this.info3 = response["data"]["data"];
    });
    axios.get("/view/newInfo/Culture/3/image").then(response => {
      this.info4 = response["data"]["data"];
    });
  }
};
</script>

<style lang="less" type="text/less" scoped>
a {
  text-decoration: none;
  color: #000;
}

li {
  list-style: none;
}

.Material {
  width: 100%;
  overflow: hidden;

  > div:nth-of-type(1) {
    position: relative;

    &::after {
      position: absolute;
      content: "";
      background-image: url("/img/Material/bg.jpg");
      width: 100%;
      height: 70%;
      top: 0;
      left: 0;
      z-index: -1;
    }

    > div:nth-of-type(1) {
      height: 616px;
      width: 65%;
      margin: 0 auto;
      display: flex;

      > a {
        flex: 1;
        display: block;
        position: relative;
        transition: all 0.3s;
        background-position: center;
        background-repeat: no-repeat;
        -webkit-background-size: cover;
        background-size: cover;

        &:hover {
          flex: 2;
        }

        > div {
          position: absolute;
          left: 10px;
          top: 10px;
          width: 20px;
          padding: 5px;
          color: #fff;
          font-size: 1.2em;
          /*font-weight: 600;*/
          font-family: "黑体";
          background-image: linear-gradient(
            to bottom right,
            rgba(0, 0, 0, 0.5),
            transparent
          );
        }
      }
    }
  }

  > div:nth-of-type(2) {
    margin: 150px 0;
    background-image: linear-gradient(
      to bottom left,
      lightgrey,
      #fff,
      transparent
    );
    padding: 50px 0;
    width: 100%;
    overflow: hidden;

    > div:first-of-type {
      width: 65%;
      margin: 0 auto;
      display: flex;
      justify-content: space-between;
      align-items: center;
      height: 100%;

      > div:first-of-type {
        box-sizing: border-box;

        img {
          box-shadow: 10px 10px 20px 1px rgba(0, 0, 0, 0.8);
          width: 100%;
          display: block;
        }
      }

      > div:last-of-type {
        width: 50%;
        box-shadow: 0px 0px 20px 10px rgba(0, 0, 0, 0.1);
        padding: 5px;

        > div:nth-of-type(1) {
          display: flex;
          justify-content: space-between;
          align-items: center;
        }

        > div:last-of-type {
          overflow: hidden;

          a {
            display: block;
            margin: 20px 0;
            font-size: 1.1em;
            border-bottom: 1px dashed #000;
            padding-bottom: 20px;

            &:hover {
              color: #9a2929;
              text-decoration: underline;
            }

            div {
              width: 100%;
              white-space: nowrap;
              overflow: hidden;
              text-overflow: ellipsis;
            }
          }
        }
      }
    }
  }

  > div:nth-of-type(3) {
    background-image: url("/img/Material/bg2.jpg");
    height: 700px;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;

    h1 {
      color: white;
      width: 66px;
      position: relative;

      &::after,
      &::before {
        background-image: url("/img/icon/titleW.png");
        transition: all 0.3s;
      }

      &:hover::after,
      &:hover::before {
        background-image: url("/img/icon/title.png");
      }

      > ul:first-of-type {
        transform: rotate(108deg);

        li {
          position: absolute;
          left: -130px;
          top: 9px;
          opacity: 0;
          background-color: lightgray;
          /*padding: 20px;*/
          box-sizing: border-box;
          width: 100px;
          height: 100px;
          border-radius: 50%;
          font-size: 20px;
          font-weight: 700;
          font-family: "黑体";
          transform-origin: 200% 0%;
          transition: all 1s;

          a {
            display: block;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            transition: all 1s;
          }
        }

        /*          > li:nth-of-type(1) {

                  }

                  > li:nth-of-type(2) {

                  }

                  > li:nth-of-type(3) {

                  }

                  > li:nth-of-type(4) {

                  }

                  > li:nth-of-type(5) {


                  }

                  > li:nth-of-type(6) {

                }*/
      }

      &:hover li {
        left: -176px !important;
        top: 9px !important;
        opacity: 1 !important;
      }

      &:hover li:nth-of-type(1) {
        transform: rotate(360deg/5 * 1);

        a {
          transform: rotate(180deg);
        }
      }

      &:hover li:nth-of-type(2) {
        transform: rotate(360deg/5 * 2);

        a {
          transform: rotate(108deg);
        }
      }

      &:hover li:nth-of-type(3) {
        transform: rotate(360deg/5 * 3);

        a {
          transform: rotate(36deg);
        }
      }

      &:hover li:nth-of-type(4) {
        transform: rotate(360deg/5 * 4);

        a {
          transform: rotate(-36deg);
        }
      }

      &:hover li:nth-of-type(5) {
        transform: rotate(360deg/5 * 5);

        a {
          transform: rotate(-108deg);
        }
      }

      &:hover li:nth-of-type(6) {
        transform: rotate(360deg);
      }
    }

    > div:nth-of-type(2) {
      position: absolute;
      left: 100px;
      top: 100px;
      transform: rotate(10deg);
      transform-origin: right bottom;
    }

    > div:nth-of-type(3) {
      position: absolute;
      left: 436px;
      top: 389px;
      transform: rotate(-20deg);
      transform-origin: 0 0;
    }

    > div:nth-of-type(4) {
      position: absolute;
      right: 100px;
      bottom: 100px;
      transform: rotate(10deg);
      transform-origin: right bottom;
    }

    > div:nth-of-type(5) {
      position: absolute;
      right: 436px;
      bottom: 289px;
      transform: rotate(-20deg);
      transform-origin: 0 0;
    }
    > div:nth-of-type(2),
    > div:nth-of-type(3),
    > div:nth-of-type(4),
    > div:nth-of-type(5) {
      transition: all 0.3s;
    }

    > div:nth-of-type(2):hover,
    > div:nth-of-type(3):hover,
    > div:nth-of-type(4):hover,
    > div:nth-of-type(5):hover {
      transform: rotate(0deg);
    }
  }

  > div:nth-of-type(4) {
    margin-top: 100px;
    > h1 {
      width: 66px;
      margin: 0 auto;
    }
    > div:nth-of-type(1) {
      display: flex;
      justify-content: space-between;
      align-items: center;
      width: 50%;
      margin: 20px auto;
      img {
        width: 100%;
      }
    }
    div:nth-of-type(2) {
      text-align: center;
    }
  }
}

.iconMore {
  position: relative;
  /*width: 50px;*/
  padding-right: 20px;

  &::before,
  &::after {
    content: "";
    background-image: url("/img/icon/1.png");
    width: 21px;
    height: 21px;
    position: absolute;
    background-repeat: no-repeat;
  }

  &::before {
    left: -20px;
    top: -5px;
  }

  &::after {
    right: 0px;
    bottom: -5px;
    background-position: -21px 0;
  }

  &:hover {
    color: #9a2929;
  }

  &:hover::after {
    background-position: -21px -21px;
  }

  &:hover::before {
    background-position: 0px -21px;
  }
}

.iconTitle {
  position: relative;
  padding: 0 32px;
  font-family: "黑体";

  &::before,
  &::after {
    position: absolute;
    content: "";
    background-image: url("/img/icon/title.png");
    background-repeat: no-repeat;
    width: 22px;
    height: 32px;
    top: 2px;
  }

  &::before {
    background-position: 0 0;
    left: 0;
  }

  &::after {
    background-position: -21px 0;
    right: 0;
  }
}
</style>
