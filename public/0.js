(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[0],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Intangible.vue?vue&type=script&lang=js&":
/*!*********************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Intangible.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************************************************************************************************/
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
/* harmony default export */ __webpack_exports__["default"] = ({
  name: "Intangible",
  data: function data() {
    return {
      banner: [{
        id: 1,
        img: '/img/index/1.jpg',
        title: '中国非物质文化遗产年俗文化展示'
      }, {
        id: 2,
        img: '/img/index/1.jpg',
        title: '中国非物质文化遗产年俗文化展示'
      }, {
        id: 3,
        img: '/img/index/1.jpg',
        title: '中国非物质文化遗产年俗文化展示'
      }, {
        id: 4,
        img: '/img/index/1.jpg',
        title: '中国非物质文化遗产年俗文化展示'
      }],
      video: [{
        id: 1,
        title: '2019年“文化和自然遗产日”宣传片',
        content: '6月7日晚，由文化和旅游部、广东省人民政府主办的2019年'
      }, {
        id: 2,
        title: '2019年“文化和自然遗产日”宣传片',
        content: '6月7日晚，由文化和旅游部、广东省人民政府主办的2019年'
      }, {
        id: 3,
        title: '2019年“文化和自然遗产日”宣传片',
        content: '6月7日晚，由文化和旅游部、广东省人民政府主办的2019年'
      }, {
        id: 4,
        title: '2019年“文化和自然遗产日”宣传片',
        content: '6月7日晚，由文化和旅游部、广东省人民政府主办的2019年'
      }],
      audio: [{
        id: 1,
        name: '古筝'
      }, {
        id: 2,
        name: '古琴'
      }, {
        id: 3,
        name: '丝竹'
      }, {
        id: 4,
        name: '鼓乐'
      }, {
        id: 5,
        name: '更多'
      }]
    };
  },
  mounted: function mounted() {
    var _this = this;

    axios.get('/view/newInfo/Culture/4/video').then(function (response) {
      _this.video = response['data']['data'];
    });
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true&":
/*!***********************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--14-2!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true& ***!
  \***********************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "a[data-v-68b64ef0] {\n  text-decoration: none;\n  color: #000;\n}\nli[data-v-68b64ef0] {\n  list-style: none;\n}\n.Intangible[data-v-68b64ef0] {\n  width: 100%;\n  overflow: hidden;\n}\n.Intangible > div[data-v-68b64ef0]:nth-of-type(1) {\n  position: relative;\n}\n.Intangible > div[data-v-68b64ef0]:nth-of-type(1)::after {\n  position: absolute;\n  content: '';\n  background-image: url(\"/img/Intangible/bg.png\");\n  width: 100%;\n  height: 70%;\n  top: 0;\n  left: 0;\n  z-index: -1;\n}\n.Intangible > div:nth-of-type(1) > div[data-v-68b64ef0]:nth-of-type(1) {\n  height: 616px;\n  width: 65%;\n  margin: 0 auto;\n  display: -webkit-box;\n  display: flex;\n}\n.Intangible > div:nth-of-type(1) > div:nth-of-type(1) > a[data-v-68b64ef0] {\n  -webkit-box-flex: 1;\n          flex: 1;\n  display: block;\n  position: relative;\n  -webkit-transition: all 0.3s;\n  transition: all 0.3s;\n  background-position: center;\n  background-repeat: no-repeat;\n  background-size: cover;\n}\n.Intangible > div:nth-of-type(1) > div:nth-of-type(1) > a[data-v-68b64ef0]:hover {\n  -webkit-box-flex: 2;\n          flex: 2;\n}\n.Intangible > div:nth-of-type(1) > div:nth-of-type(1) > a > div[data-v-68b64ef0] {\n  position: absolute;\n  left: 10px;\n  top: 10px;\n  width: 20px;\n  padding: 5px;\n  color: #fff;\n  font-size: 1.2em;\n  /*font-weight: 600;*/\n  font-family: '\\9ED1\\4F53';\n  background-image: -webkit-gradient(linear, left top, right bottom, from(rgba(0, 0, 0, 0.5)), to(transparent));\n  background-image: linear-gradient(to bottom right, rgba(0, 0, 0, 0.5), transparent);\n}\n.Intangible > div[data-v-68b64ef0]:nth-of-type(2) {\n  margin: 150px 0;\n  background-image: -webkit-gradient(linear, right top, left bottom, from(lightgrey), color-stop(#fff), to(transparent));\n  background-image: linear-gradient(to bottom left, lightgrey, #fff, transparent);\n  padding: 50px 0;\n  width: 100%;\n  overflow: hidden;\n}\n.Intangible > div:nth-of-type(2) > div[data-v-68b64ef0]:first-of-type {\n  width: 65%;\n  margin: 0 auto;\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-pack: justify;\n          justify-content: space-between;\n  -webkit-box-align: center;\n          align-items: center;\n  height: 100%;\n}\n.Intangible > div:nth-of-type(2) > div:first-of-type > div[data-v-68b64ef0]:first-of-type {\n  box-sizing: border-box;\n}\n.Intangible > div:nth-of-type(2) > div:first-of-type > div:first-of-type img[data-v-68b64ef0] {\n  box-shadow: 10px 10px 20px 1px rgba(0, 0, 0, 0.8);\n  width: 100%;\n  display: block;\n}\n.Intangible > div:nth-of-type(2) > div:first-of-type > div[data-v-68b64ef0]:last-of-type {\n  width: 50%;\n  box-shadow: 0px 0px 20px 10px rgba(0, 0, 0, 0.1);\n  padding: 5px;\n}\n.Intangible > div:nth-of-type(2) > div:first-of-type > div:last-of-type > div[data-v-68b64ef0]:nth-of-type(1) {\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-pack: justify;\n          justify-content: space-between;\n  -webkit-box-align: center;\n          align-items: center;\n}\n.Intangible > div:nth-of-type(2) > div:first-of-type > div:last-of-type > div[data-v-68b64ef0]:last-of-type {\n  overflow: hidden;\n}\n.Intangible > div:nth-of-type(2) > div:first-of-type > div:last-of-type > div:last-of-type a[data-v-68b64ef0] {\n  display: block;\n  margin: 20px 0;\n  font-size: 1.1em;\n  border-bottom: 1px dashed #000;\n  padding-bottom: 20px;\n}\n.Intangible > div:nth-of-type(2) > div:first-of-type > div:last-of-type > div:last-of-type a[data-v-68b64ef0]:hover {\n  color: #9a2929;\n  text-decoration: underline;\n}\n.Intangible > div:nth-of-type(2) > div:first-of-type > div:last-of-type > div:last-of-type a div[data-v-68b64ef0] {\n  width: 100%;\n  white-space: nowrap;\n  overflow: hidden;\n  text-overflow: ellipsis;\n}\n.Intangible > div[data-v-68b64ef0]:nth-of-type(3) {\n  background-image: url('/img/Material/bg2.jpg');\n  height: 700px;\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-pack: center;\n          justify-content: center;\n  -webkit-box-align: center;\n          align-items: center;\n  position: relative;\n}\n.Intangible > div:nth-of-type(3) h1[data-v-68b64ef0] {\n  color: white;\n  width: 66px;\n  position: relative;\n}\n.Intangible > div:nth-of-type(3) h1[data-v-68b64ef0]::after,\n.Intangible > div:nth-of-type(3) h1[data-v-68b64ef0]::before {\n  background-image: url('/img/icon/titleW.png');\n  -webkit-transition: all 0.3s;\n  transition: all 0.3s;\n}\n.Intangible > div:nth-of-type(3) h1[data-v-68b64ef0]:hover::after,\n.Intangible > div:nth-of-type(3) h1[data-v-68b64ef0]:hover::before {\n  background-image: url('/img/icon/title.png');\n}\n.Intangible > div:nth-of-type(3) h1 > ul[data-v-68b64ef0]:first-of-type {\n  -webkit-transform: rotate(108deg);\n          transform: rotate(108deg);\n  /*          > li:nth-of-type(1) {\n\n                }\n\n                > li:nth-of-type(2) {\n\n                }\n\n                > li:nth-of-type(3) {\n\n                }\n\n                > li:nth-of-type(4) {\n\n                }\n\n                > li:nth-of-type(5) {\n\n\n                }\n\n                > li:nth-of-type(6) {\n\n              }*/\n}\n.Intangible > div:nth-of-type(3) h1 > ul:first-of-type li[data-v-68b64ef0] {\n  position: absolute;\n  left: -130px;\n  top: 9px;\n  opacity: 0;\n  background-color: lightgray;\n  /*padding: 20px;*/\n  box-sizing: border-box;\n  width: 100px;\n  height: 100px;\n  border-radius: 50%;\n  font-size: 20px;\n  font-weight: 700;\n  font-family: '\\9ED1\\4F53';\n  -webkit-transform-origin: 200% 0%;\n          transform-origin: 200% 0%;\n  -webkit-transition: all 1s;\n  transition: all 1s;\n}\n.Intangible > div:nth-of-type(3) h1 > ul:first-of-type li a[data-v-68b64ef0] {\n  display: block;\n  width: 100%;\n  height: 100%;\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-pack: center;\n          justify-content: center;\n  -webkit-box-align: center;\n          align-items: center;\n  -webkit-transition: all 1s;\n  transition: all 1s;\n}\n.Intangible > div:nth-of-type(3) h1:hover li[data-v-68b64ef0] {\n  left: -176px !important;\n  top: 9px !important;\n  opacity: 1 !important;\n}\n.Intangible > div:nth-of-type(3) h1:hover li[data-v-68b64ef0]:nth-of-type(1) {\n  -webkit-transform: rotate(72deg);\n          transform: rotate(72deg);\n}\n.Intangible > div:nth-of-type(3) h1:hover li:nth-of-type(1) a[data-v-68b64ef0] {\n  -webkit-transform: rotate(180deg);\n          transform: rotate(180deg);\n}\n.Intangible > div:nth-of-type(3) h1:hover li[data-v-68b64ef0]:nth-of-type(2) {\n  -webkit-transform: rotate(144deg);\n          transform: rotate(144deg);\n}\n.Intangible > div:nth-of-type(3) h1:hover li:nth-of-type(2) a[data-v-68b64ef0] {\n  -webkit-transform: rotate(108deg);\n          transform: rotate(108deg);\n}\n.Intangible > div:nth-of-type(3) h1:hover li[data-v-68b64ef0]:nth-of-type(3) {\n  -webkit-transform: rotate(216deg);\n          transform: rotate(216deg);\n}\n.Intangible > div:nth-of-type(3) h1:hover li:nth-of-type(3) a[data-v-68b64ef0] {\n  -webkit-transform: rotate(36deg);\n          transform: rotate(36deg);\n}\n.Intangible > div:nth-of-type(3) h1:hover li[data-v-68b64ef0]:nth-of-type(4) {\n  -webkit-transform: rotate(288deg);\n          transform: rotate(288deg);\n}\n.Intangible > div:nth-of-type(3) h1:hover li:nth-of-type(4) a[data-v-68b64ef0] {\n  -webkit-transform: rotate(-36deg);\n          transform: rotate(-36deg);\n}\n.Intangible > div:nth-of-type(3) h1:hover li[data-v-68b64ef0]:nth-of-type(5) {\n  -webkit-transform: rotate(360deg);\n          transform: rotate(360deg);\n}\n.Intangible > div:nth-of-type(3) h1:hover li:nth-of-type(5) a[data-v-68b64ef0] {\n  -webkit-transform: rotate(-108deg);\n          transform: rotate(-108deg);\n}\n.Intangible > div:nth-of-type(3) h1:hover li[data-v-68b64ef0]:nth-of-type(6) {\n  -webkit-transform: rotate(360deg);\n          transform: rotate(360deg);\n}\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(2) {\n  position: absolute;\n  left: 100px;\n  top: 100px;\n  -webkit-transform: rotate(10deg);\n          transform: rotate(10deg);\n  -webkit-transform-origin: right bottom;\n          transform-origin: right bottom;\n}\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(3) {\n  position: absolute;\n  left: 436px;\n  top: 389px;\n  -webkit-transform: rotate(-20deg);\n          transform: rotate(-20deg);\n  -webkit-transform-origin: 0 0;\n          transform-origin: 0 0;\n}\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(4) {\n  position: absolute;\n  right: 100px;\n  bottom: 100px;\n  -webkit-transform: rotate(10deg);\n          transform: rotate(10deg);\n  -webkit-transform-origin: right bottom;\n          transform-origin: right bottom;\n}\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(5) {\n  position: absolute;\n  right: 436px;\n  bottom: 289px;\n  -webkit-transform: rotate(-20deg);\n          transform: rotate(-20deg);\n  -webkit-transform-origin: 0 0;\n          transform-origin: 0 0;\n}\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(2),\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(3),\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(4),\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(5) {\n  -webkit-transition: all 0.3s;\n  transition: all 0.3s;\n}\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(2):hover,\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(3):hover,\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(4):hover,\n.Intangible > div:nth-of-type(3) > div[data-v-68b64ef0]:nth-of-type(5):hover {\n  -webkit-transform: rotate(0deg);\n          transform: rotate(0deg);\n}\n.Intangible > div[data-v-68b64ef0]:nth-of-type(4) {\n  margin-top: 100px;\n}\n.Intangible > div:nth-of-type(4) > h1[data-v-68b64ef0] {\n  width: 66px;\n  margin: 0 auto;\n}\n.Intangible > div:nth-of-type(4) > div[data-v-68b64ef0]:nth-of-type(1) {\n  display: -webkit-box;\n  display: flex;\n  -webkit-box-pack: justify;\n          justify-content: space-between;\n  -webkit-box-align: center;\n          align-items: center;\n  width: 50%;\n  margin: 20px auto;\n}\n.Intangible > div:nth-of-type(4) > div:nth-of-type(1) img[data-v-68b64ef0] {\n  width: 100%;\n}\n.Intangible > div:nth-of-type(4) div[data-v-68b64ef0]:nth-of-type(2) {\n  text-align: center;\n}\n.iconMore[data-v-68b64ef0] {\n  position: relative;\n  /*width: 50px;*/\n  padding-right: 20px;\n}\n.iconMore[data-v-68b64ef0]::before,\n.iconMore[data-v-68b64ef0]::after {\n  content: '';\n  background-image: url('/img/icon/1.png');\n  width: 21px;\n  height: 21px;\n  position: absolute;\n  background-repeat: no-repeat;\n}\n.iconMore[data-v-68b64ef0]::before {\n  left: -20px;\n  top: -5px;\n}\n.iconMore[data-v-68b64ef0]::after {\n  right: 0px;\n  bottom: -5px;\n  background-position: -21px 0;\n}\n.iconMore[data-v-68b64ef0]:hover {\n  color: #9a2929;\n}\n.iconMore[data-v-68b64ef0]:hover::after {\n  background-position: -21px -21px;\n}\n.iconMore[data-v-68b64ef0]:hover::before {\n  background-position: 0px -21px;\n}\n.iconTitle[data-v-68b64ef0] {\n  position: relative;\n  padding: 0 32px;\n  font-family: '\\9ED1\\4F53';\n}\n.iconTitle[data-v-68b64ef0]::before,\n.iconTitle[data-v-68b64ef0]::after {\n  position: absolute;\n  content: \"\";\n  background-image: url('/img/icon/title.png');\n  background-repeat: no-repeat;\n  width: 22px;\n  height: 32px;\n  top: 2px;\n}\n.iconTitle[data-v-68b64ef0]::before {\n  background-position: 0 0;\n  left: 0;\n}\n.iconTitle[data-v-68b64ef0]::after {\n  background-position: -21px 0;\n  right: 0;\n}\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true&":
/*!***************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--14-2!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true& ***!
  \***************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../node_modules/css-loader!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--14-2!../../../node_modules/less-loader/dist/cjs.js!../../../node_modules/vue-loader/lib??vue-loader-options!./Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true& */ "./node_modules/css-loader/index.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Intangible.vue?vue&type=template&id=68b64ef0&scoped=true&":
/*!*************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/Intangible.vue?vue&type=template&id=68b64ef0&scoped=true& ***!
  \*************************************************************************************************************************************************************************************************************************/
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
  return _c("div", { staticClass: "Intangible" }, [
    _c("div", [
      _c(
        "div",
        _vm._l(_vm.banner, function(item, index) {
          return _c(
            "a",
            { key: index, style: "background-image:url(" + item.img + ")" },
            [_c("div", [_vm._v(_vm._s(item.title))])]
          )
        }),
        0
      )
    ]),
    _vm._v(" "),
    _c("div", [
      _c("div", [
        _vm._m(0),
        _vm._v(" "),
        _c("div", [
          _vm._m(1),
          _vm._v(" "),
          _c(
            "div",
            _vm._l(_vm.video, function(item, index) {
              return _c("div", { key: index }, [
                _c(
                  "a",
                  {
                    attrs: { href: "/#/videoInfo?tables=video&id=" + item.id }
                  },
                  [
                    _c("div", [_vm._v(_vm._s(item.title))]),
                    _vm._v(" "),
                    _c("div", [_vm._v(_vm._s(item.content))])
                  ]
                )
              ])
            }),
            0
          )
        ])
      ])
    ]),
    _vm._v(" "),
    _c("div", [
      _c("div", [
        _c("h1", { staticClass: "iconTitle" }, [
          _vm._v("音频\n        "),
          _c(
            "ul",
            _vm._l(_vm.audio, function(item, index) {
              return _c("li", { key: index }, [
                _c("a", { attrs: { href: "audio/?id=" + item.id } }, [
                  _vm._v(_vm._s(item.name))
                ])
              ])
            }),
            0
          )
        ])
      ]),
      _vm._v(" "),
      _c(
        "div",
        [
          _c("el-card", { attrs: { "body-style": { padding: "0px" } } }, [
            _c("img", {
              staticStyle: { width: "300px" },
              attrs: { src: "/img/index/1.jpg" }
            }),
            _vm._v(" "),
            _c("div", { staticStyle: { padding: "14px" } }, [
              _c("h4", [_vm._v("hover 音频")])
            ])
          ])
        ],
        1
      ),
      _vm._v(" "),
      _c(
        "div",
        [
          _c("el-card", { attrs: { "body-style": { padding: "0px" } } }, [
            _c("img", {
              staticStyle: { width: "300px" },
              attrs: { src: "/img/index/2.jpg" }
            }),
            _vm._v(" "),
            _c("div", { staticStyle: { padding: "14px" } }, [
              _c("h4", [_vm._v("文化")])
            ])
          ])
        ],
        1
      ),
      _vm._v(" "),
      _c(
        "div",
        [
          _c("el-card", { attrs: { "body-style": { padding: "0px" } } }, [
            _c("img", {
              staticStyle: { width: "300px" },
              attrs: { src: "/img/index/3.jpg" }
            }),
            _vm._v(" "),
            _c("div", { staticStyle: { padding: "14px" } }, [
              _c("h4", [_vm._v("传统")])
            ])
          ])
        ],
        1
      ),
      _vm._v(" "),
      _c(
        "div",
        [
          _c("el-card", { attrs: { "body-style": { padding: "0px" } } }, [
            _c("img", {
              staticStyle: { width: "300px" },
              attrs: { src: "/img/index/6.jpg" }
            }),
            _vm._v(" "),
            _c("div", { staticStyle: { padding: "14px" } }, [
              _c("h4", [_vm._v("画")])
            ])
          ])
        ],
        1
      )
    ]),
    _vm._v(" "),
    _c("div", [
      _c("h1", { staticClass: "iconTitle" }, [_vm._v("图集")]),
      _vm._v(" "),
      _c(
        "div",
        [
          _c("el-card", { attrs: { "body-style": { padding: "0px" } } }, [
            _c("img", {
              attrs: {
                src:
                  "https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
              }
            }),
            _vm._v(" "),
            _c("div", { staticStyle: { padding: "14px" } }, [
              _c("h4", [_vm._v("古筝")])
            ])
          ]),
          _vm._v(" "),
          _c("el-card", { attrs: { "body-style": { padding: "0px" } } }, [
            _c("img", {
              attrs: {
                src:
                  "https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
              }
            }),
            _vm._v(" "),
            _c("div", { staticStyle: { padding: "14px" } }, [
              _c("h4", [_vm._v("古筝")])
            ])
          ]),
          _vm._v(" "),
          _c("el-card", { attrs: { "body-style": { padding: "0px" } } }, [
            _c("img", {
              attrs: {
                src:
                  "https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
              }
            }),
            _vm._v(" "),
            _c("div", { staticStyle: { padding: "14px" } }, [
              _c("h4", [_vm._v("古筝")])
            ])
          ])
        ],
        1
      ),
      _vm._v(" "),
      _vm._m(2)
    ])
  ])
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", [
      _c("img", { attrs: { src: "/img/Material/video.jpg", alt: "" } })
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", [
      _c("h1", { staticClass: "iconTitle" }, [_vm._v("视频")]),
      _c("a", { staticClass: "iconMore" }, [_vm._v("更多")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", [
      _c("a", { staticClass: "iconMore", attrs: { href: "" } }, [
        _vm._v("查看更多")
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/Intangible.vue":
/*!************************************************!*\
  !*** ./resources/js/components/Intangible.vue ***!
  \************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Intangible_vue_vue_type_template_id_68b64ef0_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Intangible.vue?vue&type=template&id=68b64ef0&scoped=true& */ "./resources/js/components/Intangible.vue?vue&type=template&id=68b64ef0&scoped=true&");
/* harmony import */ var _Intangible_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Intangible.vue?vue&type=script&lang=js& */ "./resources/js/components/Intangible.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _Intangible_vue_vue_type_style_index_0_id_68b64ef0_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true& */ "./resources/js/components/Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Intangible_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Intangible_vue_vue_type_template_id_68b64ef0_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Intangible_vue_vue_type_template_id_68b64ef0_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "68b64ef0",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/Intangible.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/Intangible.vue?vue&type=script&lang=js&":
/*!*************************************************************************!*\
  !*** ./resources/js/components/Intangible.vue?vue&type=script&lang=js& ***!
  \*************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Intangible_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib??ref--4-0!../../../node_modules/vue-loader/lib??vue-loader-options!./Intangible.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Intangible.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Intangible_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true&":
/*!**********************************************************************************************************!*\
  !*** ./resources/js/components/Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true& ***!
  \**********************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Intangible_vue_vue_type_style_index_0_id_68b64ef0_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/style-loader!../../../node_modules/css-loader!../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../node_modules/postcss-loader/src??ref--14-2!../../../node_modules/less-loader/dist/cjs.js!../../../node_modules/vue-loader/lib??vue-loader-options!./Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/less-loader/dist/cjs.js!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Intangible.vue?vue&type=style&index=0&id=68b64ef0&lang=less&scoped=true&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Intangible_vue_vue_type_style_index_0_id_68b64ef0_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Intangible_vue_vue_type_style_index_0_id_68b64ef0_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Intangible_vue_vue_type_style_index_0_id_68b64ef0_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Intangible_vue_vue_type_style_index_0_id_68b64ef0_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_14_2_node_modules_less_loader_dist_cjs_js_node_modules_vue_loader_lib_index_js_vue_loader_options_Intangible_vue_vue_type_style_index_0_id_68b64ef0_lang_less_scoped_true___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/Intangible.vue?vue&type=template&id=68b64ef0&scoped=true&":
/*!*******************************************************************************************!*\
  !*** ./resources/js/components/Intangible.vue?vue&type=template&id=68b64ef0&scoped=true& ***!
  \*******************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Intangible_vue_vue_type_template_id_68b64ef0_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib??vue-loader-options!./Intangible.vue?vue&type=template&id=68b64ef0&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/Intangible.vue?vue&type=template&id=68b64ef0&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Intangible_vue_vue_type_template_id_68b64ef0_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Intangible_vue_vue_type_template_id_68b64ef0_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);