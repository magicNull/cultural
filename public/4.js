(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[4],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/new.vue?vue&type=script&lang=js&":
/*!**************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/new.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// import { watch } from 'fs';
/* harmony default export */ __webpack_exports__["default"] = ({
  name: "new",
  data: function data() {
    return {
      today: [{
        "title": '新时期非物质文化遗产记录和保护的实践与思考',
        "id": '1'
      }, {
        "title": '1分钟知非遗事·非遗半月报第48期',
        "id": '2'
      }, {
        "title": '牙买加将承办第十五届非物质文化遗产委员会会议',
        "id": '3'
      }, {
        "title": '牙买加将承办第十五届非物质文化遗产委员会会议',
        "id": '4'
      }, {
        "title": '牙买加将承办第十五届非物质文化遗产委员会会议',
        "id": '5'
      }, {
        "title": '牙买加将承办第十五届非物质文化遗产委员会会议',
        "id": '6'
      }],
      todayBack: [{
        'title': '新时期非物质文化遗产记录和保护的实践与思考',
        "img": '/img/index/1.jpg',
        "id": '1'
      }, {
        'title': '1分钟知非遗事·非遗半月报第48期',
        "img": '/img/index/1.jpg',
        "id": '2'
      }, {
        'title': '牙买加将承办第十五届非物质文化遗产委员会会议',
        "img": '/img/index/1.jpg',
        "id": '3'
      }, {
        'title': '新时期非物质文化遗产记录和保护的实践与思考',
        "img": '/img/index/1.jpg',
        "id": '4'
      }],
      topic: [{
        'title': '新时期非物质文化遗产记录和保护的实践与思考',
        "img": '/img/index/1.jpg',
        "id": '1'
      }, {
        'title': '1分钟知非遗事·非遗半月报第48期',
        "img": '/img/index/1.jpg',
        "id": '2'
      }, {
        'title': '牙买加将承办第十五届非物质文化遗产委员会会议',
        "img": '/img/index/1.jpg',
        "id": '3'
      }, {
        'title': '新时期非物质文化遗产记录和保护的实践与思考',
        "img": '/img/index/1.jpg',
        "id": '4'
      }, {
        'title': '新时期非物质文化遗产记录和保护的实践与思考',
        "img": '/img/index/1.jpg',
        "id": '5'
      }],
      video: 1,
      video2: 2,
      timer: '',
      sum: 0,
      tabShow: 0,
      info: null,
      info2: null,
      info3: null,
      info4: null,
      info5: null
    };
  },
  methods: {
    date: function date() {
      var day = new Date().getDate();
      var month = new Date().getMonth() + 1;
      var year = new Date().getFullYear();
      var week = new Date().getDay();
      var weekCn = ['一', '二', '三', '四', '五', '六', '天'];
      return year + "年" + month + "月" + day + "日" + "  " + "星期" + weekCn[week - 1];
    },
    videoImg: function videoImg() {
      var vm = this;
      var img = document.querySelector('#img');
      var img2 = document.querySelector('#img2');
      var video = document.querySelector('#video');
      var video2 = document.querySelector('#video2');
      var canvas = document.createElement('canvas');
      var canvas2 = document.createElement('canvas');
      setTimeout(function () {
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
      }, 800);
    },
    videoAction: function videoAction(id, action) {
      var video = document.querySelector("#" + id.target.id);

      if (action === "play") {
        this.$nextTick(function () {
          video.play();
        });
      } else if (action) {
        this.$nextTick(function () {
          video.pause();
          video.currentTime = 0;
        });
      }
    },
    go: function go(direction, distance, id) {
      // let item=document.querySelector('#'+id);
      var vm = this;
      clearInterval(vm.timer);
      var tab = document.querySelector('#tab');
      var father = tab.parentElement;
      var son = tab.childElementCount;
      var end = tab.scrollWidth - father.offsetWidth; // console.log(father.offsetWidth);
      // console.log(tab.scrollWidth);
      // console.log(end);

      var w = 410,
          sum = 0;
      vm.timer = setInterval(function () {
        sum -= w;
        tab.style.transform = 'translateX(' + sum + 'px)'; // console.log(tab.style.transform);
        // if(tab.style.transform==="translateX(-410px)"){
        //   sum=w;
        // }

        var translateX = tab.style.transform.replace(/[^\d.]/g, ''); // console.log(tab.scrollWidth-(tab.scrollWidth-(3*410+end)));
        // console.log(tab.scrollWidth / 410);

        if (translateX >= tab.scrollWidth - father.offsetWidth + tab.scrollWidth / son) {
          sum = 410;
        }
      }, 3200);
    },
    next: function next() {
      var _this = this;

      clearInterval(this.timer);
      var tab = document.querySelector('#tab');
      var father = tab.parentElement;
      var son = tab.childElementCount;
      var w = tab.scrollWidth / son,
          sum = 0;
      var translateX = tab.style.transform.replace(/[^\d.]/g, '');
      var time = setTimeout(function () {
        sum = w + +translateX;
        tab.style.transform = 'translateX(' + sum + 'px)';

        if (translateX > 0) {
          tab.style.transform = 'translateX(' + 0 + 'px)';
        }
      }, 1000);
      var go = setTimeout(function () {
        clearTimeout(go);

        _this.go();
      }, 3000);
    },
    last: function last() {
      var _this2 = this;

      clearInterval(this.timer);
      var tab = document.querySelector('#tab');
      var father = tab.parentElement;
      var son = tab.childElementCount;
      var w = tab.scrollWidth / son,
          sum = 0;
      var translateX = tab.style.transform.replace(/[^\d.]/g, '');
      var time = setTimeout(function () {
        sum = -(+translateX + w);
        tab.style.transform = 'translateX(' + sum + 'px)';

        if (translateX >= tab.scrollWidth - father.offsetWidth + tab.scrollWidth / son) {
          sum = 410;
        }
      }, 1000);
      var go = setTimeout(function () {
        clearTimeout(go);

        _this2.go();
      }, 3000);
    },
    urls: function urls(str) {
      //图片url地址
      var imgReg = /<img.*?(?:>|\/>)/gi;
      var srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
      var arr = str.match(imgReg); // arr 为包含所有img标签的数组

      var srcArr = [];

      for (var i = 0; i < arr.length; i++) {
        var src = arr[i].match(srcReg); //获取图片地址

        srcArr.push(src[1]);
      }

      srcArr['str'] = srcArr.join(','); //字符串地址以逗号分割

      return srcArr;
    }
  },
  mounted: function mounted() {
    var _this3 = this;

    this.videoImg();
    axios.get('/view/newInfo/News/5/today').then(function (response) {
      _this3.info = response['data']['data'];
    });
    axios.get('/view/newInfo/News/5/ht').then(function (response) {
      _this3.info2 = response['data']['data'];
    });
    axios.get('/view/newInfo/News/5/whxw').then(function (response) {
      _this3.info3 = response['data']['data'];
    });
    axios.get('/view/newInfo/News/5/yw').then(function (response) {
      _this3.info4 = response['data']['data'];
    });
    axios.get('/view/newInfo/all').then(function (response) {
      _this3.info5 = response['data'];
      console.log(_this3.urls(_this3.info5[0].content)['str']);
    });
  },
  created: function created() {
    var _this4 = this;

    this.$nextTick(function () {
      _this4.go();
    });
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js?!./resources/js/components/new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true&":
/*!****************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--14-2!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true& ***!
  \****************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "li[data-v-207dd9a5] {\n  list-style: none;\n}\na[data-v-207dd9a5] {\n  text-decoration: none;\n  color: black;\n}\na[data-v-207dd9a5]:hover {\n  color: #9a2929;\n  text-decoration: underline;\n}\n.new > div[data-v-207dd9a5]:nth-of-type(1) {\n  width: 70%;\n  margin: 0 auto;\n}\n.new > div:nth-of-type(1) > div[data-v-207dd9a5]:nth-of-type(1) {\n  display: grid;\n  grid-template-columns: repeat(2, 1fr);\n  gap: 40px;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(1) > div:nth-of-type(1) > div:nth-of-type(2) > a[data-v-207dd9a5]:nth-of-type(1) {\n  font-weight: 600;\n  font-size: 1.4em;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(1) > div:nth-of-type(1) > div:nth-of-type(2) > a[data-v-207dd9a5]:nth-of-type(2) {\n  font-weight: 600;\n  font-size: 1.3em;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(1) > div:nth-of-type(1) > div:nth-of-type(2) > a[data-v-207dd9a5] {\n  display: block;\n  color: #000;\n  font-size: 1.2em;\n  margin: 10px 0;\n  border-bottom: 1px dashed rgba(0, 0, 0, 0.2);\n  white-space: nowrap;\n  overflow: hidden;\n  text-overflow: ellipsis;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(1) > div:nth-of-type(1) > div:nth-of-type(2) > a[data-v-207dd9a5]:hover {\n  color: #9a2929;\n  text-decoration: underline;\n}\n.new > div:nth-of-type(1) > div[data-v-207dd9a5]:nth-of-type(2) {\n  display: grid;\n  grid-template-columns: repeat(3, 1fr);\n  gap: 20px;\n  margin-top: 30px;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(2) a[data-v-207dd9a5] {\n  display: block;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(2) > div > div:nth-of-type(2) a[data-v-207dd9a5] {\n  margin: 15px 0;\n  padding-left: 10px;\n  white-space: nowrap;\n  overflow: hidden;\n  text-overflow: ellipsis;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(2) > div .son_first[data-v-207dd9a5] {\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-pack: justify;\n          justify-content: space-between;\n  -webkit-box-align: center;\n          align-items: center;\n  white-space: initial !important;\n  padding-left: 0 !important;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(2) > div .son_first p[data-v-207dd9a5] {\n  width: 50%;\n  padding: 5px;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(2) > div .son_first img[data-v-207dd9a5] {\n  width: 50%;\n  box-sizing: border-box;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(2) > div:nth-of-type(3) > div:last-of-type > div[data-v-207dd9a5]:first-of-type {\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-pack: justify;\n          justify-content: space-between;\n  -webkit-box-align: center;\n          align-items: center;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(2) > div:nth-of-type(3) > div:last-of-type > div:first-of-type > div[data-v-207dd9a5] {\n  width: 50%;\n  position: relative;\n  box-sizing: border-box;\n  padding: 10px;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(2) > div:nth-of-type(3) > div:last-of-type > div:first-of-type > div button[data-v-207dd9a5] {\n  position: absolute;\n  left: 13px;\n  bottom: 13px;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(2) > div:nth-of-type(3) > div:last-of-type > div:first-of-type img[data-v-207dd9a5] {\n  width: 100%;\n  display: block;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(2) > div:nth-of-type(3) > div:last-of-type > div:first-of-type video[data-v-207dd9a5] {\n  width: 100%;\n  display: block;\n}\n.new > div:nth-of-type(1) > div[data-v-207dd9a5]:nth-of-type(3) {\n  margin-top: 30px;\n  overflow: hidden;\n  position: relative;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) > h1[data-v-207dd9a5] {\n  color: #1d68a7;\n  display: -webkit-box;\n  display: flex;\n  border-bottom: 1px solid #1d68a7;\n  width: 100%;\n  -webkit-box-pack: justify;\n          justify-content: space-between;\n  -webkit-box-align: center;\n          align-items: center;\n  margin-bottom: 20px;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) > h1 > span[data-v-207dd9a5]:first-of-type {\n  border-bottom: 3px solid #1d365d;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) > h1 > span[data-v-207dd9a5]:last-of-type {\n  font-size: 16px;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) > ul[data-v-207dd9a5] {\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-pack: justify;\n          justify-content: space-between;\n  -webkit-box-align: center;\n          align-items: center;\n  width: 100%;\n  -webkit-transition: all 3s;\n  transition: all 3s;\n  /*transform: translateX(-30px);*/\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) > ul li[data-v-207dd9a5] {\n  box-sizing: border-box;\n  padding: 0 10px 0 0;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) > ul h3[data-v-207dd9a5] {\n  width: 400px;\n  white-space: nowrap;\n  overflow: hidden;\n  text-overflow: ellipsis;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) > div[data-v-207dd9a5] {\n  position: absolute;\n  z-index: 1;\n  left: 0;\n  top: 20%;\n  width: 100%;\n  height: 60%;\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-pack: justify;\n          justify-content: space-between;\n  -webkit-box-align: center;\n          align-items: center;\n  -webkit-transition: all 0.3s;\n  transition: all 0.3s;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) > div button[data-v-207dd9a5] {\n  width: 40px;\n  height: 100%;\n  background-color: rgba(0, 0, 0, 0.5);\n  border: none;\n  color: #fff;\n  font-size: 2em;\n  -webkit-transition: all 0.3s;\n  transition: all 0.3s;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) > div button[data-v-207dd9a5]:hover {\n  background-color: #ffffff;\n  color: #000;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) > div > button[data-v-207dd9a5]:nth-of-type(1) {\n  border-radius: 0 20px 20px 0;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) > div > button[data-v-207dd9a5]:nth-of-type(2) {\n  border-radius: 20px 0 0 20px;\n}\n.new > div:nth-of-type(1) > div:nth-of-type(3) img[data-v-207dd9a5] {\n  width: 400px;\n  display: block;\n}\n.el-carousel__item[data-v-207dd9a5] {\n  background-repeat: no-repeat;\n  background-position: center center;\n  background-size: cover;\n}\n.el-carousel__item a[data-v-207dd9a5] {\n  width: 100%;\n  height: 100%;\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-align: start;\n          align-items: flex-start;\n  -webkit-box-pack: center;\n          justify-content: center;\n}\n.el-carousel__item a:hover h3[data-v-207dd9a5]::after {\n  opacity: 0.8;\n}\n.el-carousel__item h3[data-v-207dd9a5] {\n  color: #fff;\n  text-align: center;\n  padding: 10px 0;\n  position: relative;\n  width: 100%;\n}\n.el-carousel__item h3[data-v-207dd9a5]::after {\n  content: '';\n  display: block;\n  background-color: #000;\n  width: 100%;\n  height: 100%;\n  position: absolute;\n  left: 0;\n  right: 0;\n  top: 0;\n  z-index: -1;\n  opacity: 0.4;\n  -webkit-transition: 0.3s;\n  transition: 0.3s;\n}\n.title[data-v-207dd9a5] {\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-pack: justify;\n          justify-content: space-between;\n  -webkit-box-align: center;\n          align-items: center;\n  border-bottom: 1px solid lightgrey;\n}\n.title h3[data-v-207dd9a5] {\n  color: #5184eb;\n  border-bottom: 3px solid blue;\n  padding-bottom: 5px;\n  font-size: 1.25em;\n}\n.son_title[data-v-207dd9a5] {\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-pack: justify;\n          justify-content: space-between;\n  -webkit-box-align: center;\n          align-items: center;\n  position: relative;\n}\n.son_title h3[data-v-207dd9a5] {\n  color: #5184eb;\n  padding-bottom: 5px;\n  padding-right: 5px;\n  font-size: 1.25em;\n  background-color: #fff;\n  font-weight: 500;\n}\n.son_title h3[data-v-207dd9a5]:after {\n  position: absolute;\n  content: '';\n  width: 100%;\n  border-bottom: 1px dashed rosybrown;\n  left: 0;\n  top: 49.5%;\n  z-index: -2;\n}\n.iconMore[data-v-207dd9a5] {\n  position: relative;\n  /*width: 14%;*/\n  width: 50px;\n  color: #1d68a7;\n  padding-left: 18px;\n  background-color: #fff;\n}\n.iconMore[data-v-207dd9a5]::before,\n.iconMore[data-v-207dd9a5]::after {\n  content: '';\n  background-image: url('/img/icon/1.png');\n  width: 21px;\n  height: 21px;\n  position: absolute;\n  background-repeat: no-repeat;\n}\n.iconMore[data-v-207dd9a5]::before {\n  left: 0px;\n  top: -5px;\n}\n.iconMore[data-v-207dd9a5]::after {\n  right: 0px;\n  bottom: -5px;\n  background-position: -21px 0;\n}\n.iconMore[data-v-207dd9a5]:hover {\n  color: #9a2929;\n  text-decoration: none;\n}\n.iconMore[data-v-207dd9a5]:hover::after {\n  background-position: -21px -21px;\n}\n.iconMore[data-v-207dd9a5]:hover::before {\n  background-position: 0px -21px;\n}\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js?!./resources/js/components/new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true&":
/*!********************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--14-2!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../node_modules/css-loader!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--14-2!../../../node_modules/less-loader/dist/cjs.js!../../../node_modules/vue-loader/lib??vue-loader-options!./new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true& */ "./node_modules/css-loader/index.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js?!./resources/js/components/new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true&");

if(typeof content === 'string') content = [[module.i, content, '']];

var transform;
var insertInto;



var options = {"hmr":true}

options.transform = transform
options.insertInto = undefined;

var update = __webpack_require__(/*! ../../../node_modules/style-loader/lib/addStyles.js */ "./node_modules/style-loader/lib/addStyles.js")(content, options);

if(content.locals) module.exports = content.locals;

if(false) {}

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/new.vue?vue&type=template&id=207dd9a5&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/new.vue?vue&type=template&id=207dd9a5&scoped=true& ***!
  \******************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "render", function() { return render; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return staticRenderFns; });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", { staticClass: "new" }, [
    _c("div", [
      _c("div", [
        _c("div", [
          _c("div", { staticClass: "title" }, [
            _c("h3", [_vm._v("今日要闻")]),
            _vm._v(" "),
            _c("span", [_vm._v(_vm._s(this.date()))])
          ]),
          _vm._v(" "),
          _c(
            "div",
            _vm._l(_vm.info, function(item, index) {
              return _c(
                "router-link",
                {
                  key: index,
                  attrs: {
                    to: {
                      path: "/articlesInfo",
                      query: { tables: "news", id: item.id }
                    }
                  }
                },
                [_vm._v(_vm._s(item.title))]
              )
            }),
            1
          )
        ]),
        _vm._v(" "),
        _c(
          "div",
          [
            _c(
              "el-carousel",
              { attrs: { height: "260px" } },
              _vm._l(_vm.todayBack, function(item, index) {
                return _c(
                  "el-carousel-item",
                  {
                    key: index,
                    style: "background-image:" + "url(" + item.img + ")"
                  },
                  [
                    _c("a", { attrs: { href: "/new/?id=" + item.id } }, [
                      _c("h3", { staticClass: "small" }, [
                        _vm._v(_vm._s(item.title))
                      ])
                    ])
                  ]
                )
              }),
              1
            )
          ],
          1
        )
      ]),
      _vm._v(" "),
      _c("div", [
        _c("div", [
          _vm._m(0),
          _vm._v(" "),
          _c(
            "div",
            [
              _c(
                "a",
                {
                  staticClass: "son_first",
                  attrs: { href: "new/?id=" + _vm.topic[0].id }
                },
                [
                  _c("img", { attrs: { src: _vm.topic[0].img, alt: "" } }),
                  _vm._v(" "),
                  _c("p", [_vm._v(_vm._s(_vm.topic[0].title))])
                ]
              ),
              _vm._v(" "),
              _vm._l(_vm.info2, function(item, index) {
                return _c(
                  "router-link",
                  {
                    key: index,
                    attrs: {
                      to: {
                        path: "/articlesInfo",
                        query: { tables: "news", id: item.id }
                      }
                    }
                  },
                  [_vm._v(_vm._s(item.title))]
                )
              }),
              _vm._v(" "),
              _vm._l(_vm.topic, function(item, index) {
                return _c(
                  "a",
                  { key: index + 1, attrs: { href: "new/?id=" + item.id } },
                  [_vm._v(_vm._s(item.title))]
                )
              })
            ],
            2
          )
        ]),
        _vm._v(" "),
        _c("div", [
          _vm._m(1),
          _vm._v(" "),
          _c(
            "div",
            [
              _vm._l(_vm.info3, function(item, index) {
                return _c(
                  "router-link",
                  {
                    key: index,
                    attrs: {
                      to: {
                        path: "/articlesInfo",
                        query: { tables: "news", id: item.id }
                      }
                    }
                  },
                  [_vm._v(_vm._s(item.title))]
                )
              }),
              _vm._v(" "),
              _vm._l(_vm.topic, function(item, index) {
                return _c(
                  "a",
                  { key: index + 1, attrs: { href: "new/?id=" + item.id } },
                  [_vm._v(_vm._s(item.title))]
                )
              }),
              _vm._v(" "),
              _c(
                "a",
                {
                  staticClass: "son_first",
                  attrs: { href: "new/?id=" + _vm.topic[0].id }
                },
                [
                  _c("img", { attrs: { src: _vm.topic[1].img, alt: "" } }),
                  _vm._v(" "),
                  _c("p", [_vm._v(_vm._s(_vm.topic[0].title))])
                ]
              )
            ],
            2
          )
        ]),
        _vm._v(" "),
        _c("div", [
          _vm._m(2),
          _vm._v(" "),
          _c(
            "div",
            [
              _c("div", [
                _c(
                  "div",
                  [
                    _c(
                      "video",
                      {
                        directives: [
                          {
                            name: "show",
                            rawName: "v-show",
                            value: _vm.video == 1,
                            expression: "video==1"
                          }
                        ],
                        attrs: { id: "video", muted: "", controls: "controls" },
                        domProps: { muted: true },
                        on: {
                          mouseout: function($event) {
                            ;(_vm.video = 0), _vm.videoAction($event, "1")
                          },
                          mouseover: function($event) {
                            return _vm.videoAction($event, "play")
                          }
                        }
                      },
                      [
                        _c("source", { attrs: { src: "/video/video.mp4" } }),
                        _vm._v(" "),
                        _c("a", { attrs: { href: "#" } }, [
                          _vm._v("你的浏览器不支持video")
                        ])
                      ]
                    ),
                    _vm._v(" "),
                    _c("img", {
                      directives: [
                        {
                          name: "show",
                          rawName: "v-show",
                          value: _vm.video == 0,
                          expression: "video==0"
                        }
                      ],
                      attrs: { src: "/img/index/1.jpg", alt: "", id: "img" },
                      on: {
                        mouseover: function($event) {
                          _vm.video = 1
                        }
                      }
                    }),
                    _vm._v(" "),
                    _c("el-button", {
                      directives: [
                        {
                          name: "show",
                          rawName: "v-show",
                          value: _vm.video == 0,
                          expression: "video==0"
                        }
                      ],
                      attrs: {
                        icon: "el-icon-video-play",
                        circle: "",
                        type: "primary"
                      }
                    })
                  ],
                  1
                ),
                _vm._v(" "),
                _c(
                  "div",
                  [
                    _c(
                      "video",
                      {
                        directives: [
                          {
                            name: "show",
                            rawName: "v-show",
                            value: _vm.video2 == 2,
                            expression: "video2==2"
                          }
                        ],
                        attrs: {
                          id: "video2",
                          muted: "",
                          controls: "controls"
                        },
                        domProps: { muted: true },
                        on: {
                          mouseout: function($event) {
                            ;(_vm.video2 = 3), _vm.videoAction($event, "1")
                          },
                          mouseover: function($event) {
                            return _vm.videoAction($event, "play")
                          }
                        }
                      },
                      [
                        _c("source", { attrs: { src: "/video/video.mp4" } }),
                        _vm._v(" "),
                        _c("a", { attrs: { href: "#" } }, [
                          _vm._v("你的浏览器不支持video")
                        ])
                      ]
                    ),
                    _vm._v(" "),
                    _c("img", {
                      directives: [
                        {
                          name: "show",
                          rawName: "v-show",
                          value: _vm.video2 == 3,
                          expression: "video2==3"
                        }
                      ],
                      attrs: { src: "/img/index/1.jpg", alt: "", id: "img2" },
                      on: {
                        mouseover: function($event) {
                          _vm.video2 = 2
                        }
                      }
                    }),
                    _vm._v(" "),
                    _c("el-button", {
                      directives: [
                        {
                          name: "show",
                          rawName: "v-show",
                          value: _vm.video2 == 3,
                          expression: "video2==3"
                        }
                      ],
                      attrs: {
                        icon: "el-icon-video-play",
                        circle: "",
                        type: "primary"
                      }
                    })
                  ],
                  1
                )
              ]),
              _vm._v(" "),
              _vm._l(_vm.topic, function(item, index) {
                return _c(
                  "a",
                  { key: index + 1, attrs: { href: "new/?id=" + item.id } },
                  [_vm._v(_vm._s(item.title))]
                )
              }),
              _vm._v(" "),
              _vm._l(_vm.info4, function(item, index) {
                return _c(
                  "router-link",
                  {
                    key: index,
                    attrs: {
                      to: {
                        path: "/articlesInfo",
                        query: { tables: "news", id: item.id }
                      }
                    }
                  },
                  [_vm._v(_vm._s(item.title))]
                )
              })
            ],
            2
          )
        ])
      ]),
      _vm._v(" "),
      _c(
        "div",
        {
          on: {
            mouseover: function($event) {
              _vm.tabShow = 1
            },
            mouseout: function($event) {
              _vm.tabShow = 0
            }
          }
        },
        [
          _c("h1", [
            _c("span", [_vm._v("快报")]),
            _vm._v(" "),
            _c("span", [_vm._v(_vm._s(this.date()))])
          ]),
          _vm._v(" "),
          _c(
            "ul",
            { attrs: { id: "tab" } },
            [
              _vm._l(_vm.todayBack, function(item, index) {
                return _c("li", { key: index + 1 }, [
                  _c("a", { attrs: { href: "new/?id=" + item.id } }, [
                    _c("img", { attrs: { src: item.img, alt: "" } }),
                    _vm._v(" "),
                    _c("h3", [
                      _vm._v(_vm._s(item.title) + "12313123123123213")
                    ]),
                    _vm._v(" "),
                    _c("p", [_vm._v("[阅读]")])
                  ])
                ])
              }),
              _vm._v(" "),
              _vm._l(_vm.info5, function(item, index, k) {
                return _c("li", { key: k }, [
                  _c(
                    "a",
                    {
                      attrs: {
                        href: "/#/articlesInfo/?tables=news&id=" + item.id
                      }
                    },
                    [
                      _c("img", {
                        attrs: {
                          src: _vm.urls(item.content)[0] || "/img/index/1.jpg",
                          alt: ""
                        }
                      }),
                      _vm._v(" "),
                      _c("h3", [_vm._v(_vm._s(item.title))]),
                      _vm._v(" "),
                      _c("p", [_vm._v("[阅读]")])
                    ]
                  )
                ])
              })
            ],
            2
          ),
          _vm._v(" "),
          _c(
            "div",
            {
              directives: [
                {
                  name: "show",
                  rawName: "v-show",
                  value: _vm.tabShow == 1,
                  expression: "tabShow==1"
                }
              ],
              staticClass: "button"
            },
            [
              _c(
                "button",
                {
                  staticClass: "left",
                  on: {
                    click: function($event) {
                      return _vm.next()
                    }
                  }
                },
                [_vm._v(" < ")]
              ),
              _vm._v(" "),
              _c(
                "button",
                {
                  staticClass: "right",
                  on: {
                    click: function($event) {
                      return _vm.last()
                    }
                  }
                },
                [_vm._v(" > ")]
              )
            ]
          )
        ]
      )
    ])
  ])
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "son_title" }, [
      _c("h3", [_vm._v("话题")]),
      _vm._v(" "),
      _c("a", { staticClass: "iconMore" }, [_vm._v("更多")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "son_title" }, [
      _c("h3", [_vm._v("文化新闻")]),
      _vm._v(" "),
      _c("a", { staticClass: "iconMore" }, [_vm._v("更多")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "son_title" }, [
      _c("h3", [_vm._v("要闻")]),
      _vm._v(" "),
      _c("a", { staticClass: "iconMore" }, [_vm._v("更多")])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/new.vue":
/*!*****************************************!*\
  !*** ./resources/js/components/new.vue ***!
  \*****************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _new_vue_vue_type_template_id_207dd9a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./new.vue?vue&type=template&id=207dd9a5&scoped=true& */ "./resources/js/components/new.vue?vue&type=template&id=207dd9a5&scoped=true&");
/* harmony import */ var _new_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./new.vue?vue&type=script&lang=js& */ "./resources/js/components/new.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _new_vue_vue_type_style_index_0_id_207dd9a5_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true& */ "./resources/js/components/new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _new_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _new_vue_vue_type_template_id_207dd9a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _new_vue_vue_type_template_id_207dd9a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "207dd9a5",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/new.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/new.vue?vue&type=script&lang=js&":
/*!******************************************************************!*\
  !*** ./resources/js/components/new.vue?vue&type=script&lang=js& ***!
  \******************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_new_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib??ref--4-0!../../../node_modules/vue-loader/lib??vue-loader-options!./new.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/new.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_new_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true&":
/*!***************************************************************************************************!*\
  !*** ./resources/js/components/new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true& ***!
  \***************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_new_vue_vue_type_style_index_0_id_207dd9a5_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/style-loader!../../../node_modules/css-loader!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--14-2!../../../node_modules/less-loader/dist/cjs.js!../../../node_modules/vue-loader/lib??vue-loader-options!./new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js?!./resources/js/components/new.vue?vue&type=style&index=0&id=207dd9a5&lang=less&scoped=true&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_new_vue_vue_type_style_index_0_id_207dd9a5_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_new_vue_vue_type_style_index_0_id_207dd9a5_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_new_vue_vue_type_style_index_0_id_207dd9a5_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_new_vue_vue_type_style_index_0_id_207dd9a5_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_new_vue_vue_type_style_index_0_id_207dd9a5_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/new.vue?vue&type=template&id=207dd9a5&scoped=true&":
/*!************************************************************************************!*\
  !*** ./resources/js/components/new.vue?vue&type=template&id=207dd9a5&scoped=true& ***!
  \************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_new_vue_vue_type_template_id_207dd9a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib??vue-loader-options!./new.vue?vue&type=template&id=207dd9a5&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/new.vue?vue&type=template&id=207dd9a5&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_new_vue_vue_type_template_id_207dd9a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_new_vue_vue_type_template_id_207dd9a5_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);