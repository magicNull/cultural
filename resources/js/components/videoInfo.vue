<template>
  <div class="videoInfo">
      <div>

          <h1>{{info.title}}</h1>
    <div class="fx">
      <div>作者:{{info.email}}</div>
      <div>时间:{{info.created_at}}</div>
      <div>分类:{{info.form}}</div>
    </div>
    <div><video controls width="100%">
        <source v-if="info.portrait" :src="info.portrait" type="video/mp4">
        </video></div>
    <!-- <div v-html="info.content">{{info.content}}</div> -->
      <!-- </div> -->
    
  </div>
  </div>
</template>
<style lang="less">
.fx{
    display: flex;
    justify-content:space-around;
    align-items: center;
}
.videoInfo{
    display: flex;
    justify-content: center;
    align-items: center;
    background-image: linear-gradient(to top,rgba(0,0,0,0.1),#fff);
    padding-bottom: 20px;
    >div:first-of-type{
        width: 80%;
        background-color: #fff;
        margin-top: 20px;
        >h1{
            text-align: center;
            margin: 20px 0;
        }
        >div:first-of-type{
            margin-bottom: 20px;
            border-bottom: 1px solid rgba(7, 156, 156, 0.2);
            padding-bottom: 10px;
        }
    }
}
</style>
<script>
export default {
  name: "videoInfo",
  data() {
    return {
      val: this.$route.query,
      info: {
        title: 1
      }
    };
  },
  mounted() {
    axios
      .get("/view/articles/" + this.val.tables + "/" + this.val.id)
      .then(response => {
        this.info = response["data"];
        console.log(response);
      });
  }
};
</script>