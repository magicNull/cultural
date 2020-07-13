// window.onload = function (e) {
//     //返回顶部
//     let goTop = document.querySelector('.top');
//     let body = document.documentElement || document.body;
//     let top = document.documentElement.scrollTop;
//     // body.onscroll=function(){
//     //     let top=document.documentElement.scrollTop;
//     //     if (top>100){
//     //         alert(123);
//     //     }else {
//     //         alert(1236);
//     //     }
//     // };
//     document.addEventListener('scroll', () => {
//         let top = document.documentElement.scrollTop;
//         if (top > 100) {
//
//         } else {
//
//         }
//
//     });
//     console.log(top);
//     goTop.onclick = function (e) {
//         let top = document.documentElement.scrollTop;
//         top <= 100 || window.scrollTo(0, 0);
//     }
//     //返回顶部end
//
//

// };
let vm = new Vue({
    el: '#a',
    data: {
        show: false
    },
    methods: {
        handleScroll() {
            let scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
            this.show = scrollTop > 100;
        },
        gotTop() {
            window.scrollTo(0, 0);
        }
    },
    mounted: function () {
        window.addEventListener('scroll', this.handleScroll, true); // 监听（绑定）滚轮滚动事件
    },
    destroyed() {
        window.removeEventListener('scroll', this.handleScroll); //离开页面需要移除这个监听的事件
    }
});
