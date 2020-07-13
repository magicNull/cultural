<template>
  <div>
    <nav>
      <div class="header-nav-left">
        <router-link to="/" class="logo">
          <img src="/img/logo2.png" alt="logo" />
        </router-link>
        <!--        <router-link to="/">首页</router-link>-->
        <router-link to="/Material">物质文化遗产</router-link>
        <router-link to="/Intangible">非物质文化遗产</router-link>
        <router-link to="/new">新闻</router-link>
      </div>
      <div class="header-nav-conter">
        <form @submit.prevent="saveTweet">
          <input type="text" name="search" placeholder="输入搜索内容" v-model="search" />
          <el-button icon="el-icon-search" type="primary" @click.prevent="saveTweet"></el-button>
        </form>
      </div>
      <div class="header-nav-rigth">
        <div @mousemove.self="show=1">我的</div>
        <div v-if="hou.power==0">
          <a href="/admin/users">后台管理</a>
        </div>
      </div>
      <div id="userInfo" v-if="show==1" @mousemove="show=1" @mouseout.self="show=0">
        <div>
          <!-- <img src="/img/logo3.png" alt /> -->
        </div>
        <div>
          <router-link to="/info">个人信息</router-link>
        </div>
        <div>
          <a href="/admin/loginOut">注销</a>
        </div>
      </div>
    </nav>
    <router-view></router-view>
    <div class="footer">
      <div>
        <h2>了解我们</h2>
        <div>
          <transition name="el-fade-in">
            <img src="/img/QRcode/weixi.jpg" alt="二维码" v-show="hover" class="show" />
          </transition>
          <svg
            class="icon"
            aria-hidden="true"
            width="200px"
            @mousemove.stop="hover=true"
            @mouseout.stop="hover=false"
          >
            <use xlink:href="#icon-weixin" />
          </svg>
          <svg class="icon" aria-hidden="true" width="200px">
            <use xlink:href="#icon-icon" />
          </svg>
          <svg class="icon" aria-hidden="true" width="200px">
            <use xlink:href="#icon-weibo" />
          </svg>
          <svg class="icon" aria-hidden="true" width="200px">
            <use xlink:href="#icon-quanqiu" />
          </svg>
        </div>
      </div>
      <div>
        <div>
          <h2>联系我们</h2>
          <a href="mailto:1207895752@qq.com?subject=网站邮箱" title="1207895752@qq.com">发送邮件</a>
          <a href="#">联系客服</a>
        </div>
        <div>
          <h2>联系我们</h2>
          <a href="mailto:1207895752@qq.com?subject=网站邮箱" title="1207895752@qq.com">发送邮件</a>
          <a href="#">联系客服</a>
        </div>
        <div>
          <h2>联系我们</h2>
          <a href="mailto:1207895752@qq.com?subject=网站邮箱" title="1207895752@qq.com">发送邮件</a>
          <a href="#">联系客服</a>
        </div>
        <div>
          <h2>友情链接</h2>
          <a href="http://www.ihchina.cn/" target="_block">中国非物质文化遗产网</a>
          <a
            href="https://zh.wikipedia.org/zh/%E6%96%87%E5%8C%96%E9%81%97%E4%BA%A7"
            target="_block"
          >维基百科</a>
        </div>
        <div>
          <img src="/img/logo.png" alt />
        </div>
      </div>
      <div>本网站为学习使用网站，大部分素材来源于网络且此网站仅用于学习用途</div>
    </div>
  </div>
</template>

<script>
export default {
  name: "App",
  data() {
    return {
      msg: 123,
      imgSrc: "/img/",
      hover: false,
      search: "",
      info: localStorage.getItem("email"),
      show: 0,
      hou: {
        power: null
      }
    };
  },
  methods: {
    saveTweet() {
      // console.log(this);
      // axios.post('/tweet/save', {search: this.search}).then(res => {
      //   console.log(res.data);
      // }).catch(e => {
      //   console.log(e);
      // });
      if(this.$route.path=='/search'){
        this.$router
        .push({
          path: "search",
          query:{
            search:this.search
          }
        })
        .catch(err => {
        
        });
        this.$router.go(0);
      }
      this.$router
        .push({
          path: "search",
          query:{
            search:this.search
          }
        })
        .catch(err => {
        
        });
    }
  },
  mounted() {
    let arr,
      reg = new RegExp("(^| )" + "email" + "=([^;]*)(;|$)");
    if ((arr = document.cookie.match(reg))) {
      localStorage.setItem("email", decodeURIComponent(arr[2]));
    } else {
      localStorage.setItem("email", "120@qq.com");
    }

    axios.get("/view/userInfo/" + this.info).then(response => {
      this.hou = response["data"];
    });
  }
};
</script>
<style lang="less" type="text/less" scoped>
a {
  text-decoration: none;
}

nav {
  margin: 0 auto;
  text-align: center;
  width: 100%;
  /*display: flex;*/
  /*justify-content: space-between;*/
  /*align-items: center;*/
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  place-items: center;
  padding: 10px 30px;
  box-sizing: border-box;
  background-color: rgba(0, 0, 0, 0.02);
  /*margin-bottom: 20px;*/
  @media screen and (max-width: 1650px) {
    grid-template-columns: 2fr 1fr 1fr !important;
  }
  @media screen and (max-width: 1350px) {
    grid-template-columns: 3fr 1fr 1fr !important;
  }
  > div:nth-of-type(1),
  > div:nth-of-type(3) {
    display: flex;
    align-items: center;
    justify-self: left;
    a {
      color: #000;
      position: relative;
      margin: 0 0.5rem;

      &:hover {
        color: #000;
      }

      &::after {
        display: block;
        content: "";
        border-bottom: 1.5px solid red;
        width: 100%;
        position: absolute;
        left: 0;
        bottom: -1.5px;
        opacity: 0;
        transform: scaleX(0);
        transform-origin: 50% 0;
      }

      &:hover::after {
        opacity: 1;
        transform: scaleX(1);
        border-color: blue;
        border-bottom: 2px solid blue;
        transition: all 0.4s ease-out;
      }
    }
  }

  > div:nth-of-type(2) {
    form {
      width: 100%;
      display: flex;
      font-size: 0;
    }

    input {
      height: 38px;
      /*border-right: 0px;*/
      width: 414px;
      padding-left: 10px;

      // &::placeholder {
      //   /*padding-left: 10px;*/
      // }
    }

    button {
      display: block;
      border: 0;
      border-radius: 0;
    }
  }

  > div:nth-of-type(3) {
    justify-self: right;
  }
}

.footer {
  width: 100%;
  background-color: #fff;
  /*height: 20rem;*/
  /*padding-top: 20px;*/
  /*overflow: hidden;*/
  position: relative;
  border: 0.1px solid #fff;
  box-sizing: border-box;
  background-color: rgba(0, 0, 0, 0.01);

  > div:nth-of-type(1) {
    color: #808080;
    width: 80%;
    margin: 1.7rem auto;
    display: flex;
    /*justify-content: center;*/
    align-items: center;

    div {
      margin: 0 3rem;

      > img {
        width: 10rem;
        position: absolute;
        top: -8rem;
        left: 18.2%;
      }
    }

    h2 {
      font-weight: 500;
    }
  }

  > div:nth-of-type(2) {
    width: 80%;
    margin: 0 auto;
    color: #808080;
    display: flex;
    justify-content: space-between;

    div {
      & a {
        display: block;
        color: #808080;
        font-size: 1.2em;
        margin: 0.7em 0;
      }
    }

    > div:last-of-type {
      width: 50%;
      text-align: center;

      img {
        /*width: 100%;*/
        width: 20rem;
      }
    }
  }

  > div:nth-of-type(3) {
    width: 100%;
    color: #808080;
    /*background-color: #000;*/
    text-align: center;
    margin-top: 2rem;
  }
}

.icon {
  width: 1.7em;
  height: 1.7em;
  vertical-align: middle;
  fill: currentColor;
  overflow: hidden;
  margin: 0 0.5rem;

  &:hover {
    color: blue;
  }
}
#userInfo {
  position: absolute;
  right: 20px;
  top: 50px;
  z-index: 2;
  background-color: #fff;
  width: 100px;
  box-shadow: 2px 3px 10px 2px #000;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  border-radius: 10px;
  padding: 10px;
  padding-bottom: 0;
  > div:nth-of-type(1) {
    margin: 0 auto;
    overflow: hidden;
  }
  img {
    width: 80%;
    border-radius: 50%;
    border: 1px solid #808080;
  }
  > div {
    border-bottom: 1px solid rgba(0, 0, 0, 0.05);
    margin: 10px 0;
  }
}
.logo {
  > img {
    height: 32px;
    display: block;
  }

  &::after {
    border-bottom-color: transparent !important;
  }

  &:hover::after {
    border-bottom-color: transparent !important;
  }
}
</style>
