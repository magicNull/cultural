<template>
  <div class="search">
    <div class="select-box">
      <div class="select-title">
        <div @mouseover="css_select=0" :class="css_select==0?'select':''">新闻</div>
        <div @mouseover="css_select=1" :class="css_select==1?'select':''">文化遗产</div>
      </div>
    </div>
    <div class="select-content">
      <div v-if="css_select==0">
        <user-box
          v-for="(i,index) in news"
          :key="index"
          :author="i.email"
          :title="i.title"
          :imgs="i.content | test"
          :blurb="i.Abbreviation"
          :classify="i.dirs"
          :url="`/#/articlesInfo?tables=news&id=${i.id}`"
        />
        <el-alert title="后面好像没有东西了" type="info"></el-alert>
      </div>
      <div v-if="css_select==1">
        <user-box
          v-for="(i,index) in culture"
          :key="index+0.1"
          :author="i.email"
          :title="i.title"
          :imgs="`/`"
          :blurb="i.intro"
          :classify="i.form"
          :url="`/#/videoInfo?tables=video&id=${i.id}`"
        />
        <el-alert title="后面好像没有东西了" type="info"></el-alert>
      </div>
    </div>
  </div>
</template>


<style lang="less" type="text/less" scoped>
.select-box {
  width: 1200px;
  margin: 0 auto 20px auto;
  & > .select-title {
    display: flex;
    align-items: center;
    // justify-content: center;
    text-align: center;
    & > div {
      flex: 1;
      background-color: #66b1ff;
      padding: 10px 0;
      font-size: 20px;
      color: #fff;
      transition: 0.3s;
      cursor: pointer;
    }
  }
}
.select {
  background-color: #106ac7 !important;
}
</style>

<script>
import userBox from "../components/template/userBox";
export default {
  name: "search",
  data() {
    return {
      search: "",
      news: [],
      culture: [],
      css_select: 0
    };
  },
  methods: {},
  mounted() {
    this.search = this.$route.query.search;
    // console.log(this.search.split(' '))
    axios.get("/server/search/" + this.search.split(' ')[0]).then(res => {
      this.news = res.data.new[0];
      this.culture = res.data.culture[0];
      // console.log(res.data.new[0][0].Abbreviation);
    });
  },
  components: {
    userBox
  },
  filters: {
    test($val) {
      // console.log($val.match(/<img.*?src="(.*?)".*?>/is)[1])
      return $val.match(/<img.*?src="(.*?)".*?>/is)[1];
    }
  }
};
</script>
