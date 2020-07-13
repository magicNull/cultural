<template>
  <div class="userBox">
    <div class="user-box">
      <div class="user-list">
        <div class="user-list-left">
          <img :src="imgs" alt />
        </div>
        <div class="user-list-right">
          <a
            :href="url"
            class="user-list-right-title"
          >{{title}}</a>
          <p
            class="user-list-right-blurb"
          >{{blurb}}</p>
          <div class="user-list-right-info">
            <span>作者：{{author}}</span>
            <span>分类：{{classify}}</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>


<style lang="less" type="text/less" scoped>
.user-box {
  width: 1200px;
  margin: 0 auto 20px auto;
  border-bottom: 1px solid #eee;
  & > .user-list {
    display: flex;
    align-items: center;
    font-family: "Helvetica Neue", Helvetica, "PingFang SC", "Hiragino Sans GB",
      "Microsoft YaHei", "微软雅黑", Arial, sans-serif;
    & > .user-list-left {
      & > img {
        width: 200px;
        height: 150px;
        border: 1px solid #eee;
        border-radius: 10px;
        object-fit: cover;
      }
    }
    & > .user-list-right {
      margin-left: 10px;
      overflow: hidden;
      text-overflow: ellipsis;
      & > .user-list-right-title {
        font-size: 20px;
        text-decoration: none;
        color: #000;
        white-space: nowrap;
        font-family: "Helvetica Neue", Helvetica, "PingFang SC",
          "Hiragino Sans GB", "Microsoft YaHei", "微软雅黑", Arial, sans-serif;
        &:hover {
          text-decoration: underline;
        }
      }
      & > .user-list-right-blurb {
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        margin-top: 15px;
        color: #99a2aa;
        font-size: 14px;
        text-indent: 2em;
      }
      & > .user-list-right-info {
        max-height: 18px;
        margin-top: 15px;
        color: #99a2aa;
        font-size: 14px;
        line-height: 18px;
      }
    }
  }
}
</style>

<script>
export default {
  name: "userBox",
  data() {
    return {};
  },
  methods: {},
  props:['url','imgs','title','blurb','classify','author']
};
</script>
