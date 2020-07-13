<template>
  <div class="info">
    <div>
      <div class="img"><img :src="info.portrait|| '/img/logo3.png'" alt=""></div>
      <div class="content">
        <div class="fx">
          <el-input placeholder="请输入内容" v-model="info.name" class="m">
            <template slot="prepend">姓名</template>
          </el-input>
          <el-input placeholder="邮箱" v-model="info.email" :disabled="true" class="m">
            <template slot="prepend">邮箱</template>
          </el-input>
        </div>
        <div class="ml-2">
          <!-- <el-radio-group v-model="gender[info.gender]">
            <el-radio-button label="男" name="gender"></el-radio-button>
            <el-radio-button label="女" name="gender"></el-radio-button>
          </el-radio-group> -->
          <label for="man">男</label>&nbsp;<input type="radio" id="man" name="gender" value="0" :checked="info.gender==0">
          <label for="girl">女</label>&nbsp;<input type="radio" id="girl" name="gender" value="1" :checked="info.gender==1">
        </div>
        <div class="ml-2">
          <div>简介：</div>
          <el-input type="textarea" :autosize="{ minRows: 2, maxRows: 4}" placeholder="简介" v-model="info.introduction">
          </el-input>
        </div>
        <div class="ml-2">
          <div>上传头像</div>
          <div><input type="file" name="file" id="file" accept="image/png,image/jpg,image/gif,image/JPEG"></div>
        </div>
        <div class="ml-2">
          <el-button type="primary" @click="img">更改信息</el-button>
        </div>
          <el-alert
            :title="attr"
            type="success"
            effect="dark">
          </el-alert>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: "info",
    data(){
      return{
          input:[,,'女'],
          info:'',
          gender:['男','女'],
          attr:'可以试试更改一下资料',
      }
    },
    mounted() {
      console.log(localStorage.getItem('email'));
       axios.get('/view/userInfo/'+localStorage.getItem('email')).then(response => {this.info=response['data']});
    },methods:{
      img(e){
        let file = document.querySelector('#file').files[0];
        let gender=document.querySelectorAll('[name=gender]');
        for (let i=0; i<gender.length; i++) {
        		if (gender[i].checked) {
        			gender=gender[i].value;
        		}
        	}

       let param = new FormData(); //创建form对象
        param.append('file',file);//通过append向form对象添加数据
        console.log(this.info.gender);
        param.append('name',this.info.name);
        param.append('gender',gender);
        param.append('introduction',this.info.introduction);
        // console.log(param.get('name')); //FormData私有类对象，访问不到，可以通过get判断值是否传进去
        let config = {
          headers:{'Content-Type':'multipart/form-data'}
        };  //添加请求头
        axios.post('/view/userInfo/'+localStorage.getItem('email'),param,config)
        .then(response=>{
          this.attr=response['data'];
          if(confirm('页面发生变化是否更新页面')){
              window.location.reload();
          }

        })
      }
    }
  }
</script>

<style lang="less" type="text/less" scoped>
  .fx{
    display: flex;
    align-items: center;
  }
  .ml-2{
    margin-left: 20px;
    margin-bottom: 20px;
  }
  .m{
    margin: 20px;
  }
  .info{
  width: 100vw;
  height: 100vh;
  background: url("/img/login/bg.jpg") no-repeat center center;
  -webkit-background-size: cover;
  background-size: cover;
  display: flex;
  justify-content: center;
  align-items: center;
  >div:first-of-type{
      background-color: #fff;
      width: 40%;
      position: relative;
      .img{
        position: absolute;
        width: 150px;
        height: 150px;
        left:~'calc( (100% - 150px ) / 2 )' ;
        top:-75px;
        overflow: hidden;
        z-index: 1;
        border: 1px solid #000;
        border-radius: 50%;
        img{
          width: 100%;
        }
      }
      .content{
        margin-top: 80px;
      }
  }
}
</style>
