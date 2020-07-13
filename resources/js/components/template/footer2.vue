<template>
    <div class="footer">
        <div>
            <h2>了解我们</h2>
            <div>
                <transition name="el-fade-in">
                    <img src="/img/QRcode/weixi.jpg" alt="二维码" v-show="hover" class="show">
                </transition>
                <svg class="icon" aria-hidden="true" width="200px" @mousemove.stop="hover=true"
                     @mouseout.stop="hover=false">
                    <use xlink:href="#icon-weixin"></use>
                </svg>
                <svg class="icon" aria-hidden="true" width="200px">
                    <use xlink:href="#icon-icon"></use>
                </svg>
                <svg class="icon" aria-hidden="true" width="200px">
                    <use xlink:href="#icon-weibo"></use>
                </svg>
                <svg class="icon" aria-hidden="true" width="200px">
                    <use xlink:href="#icon-quanqiu"></use>
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
                <a href="mailto:1207895752@qq.com?subject=网站邮箱" title="1207895752@qq.com">发送邮件</a>
                <a href="#">联系客服</a>
            </div>
            <div>
                <img src="/img/QRcode/weixi.jpg" alt="123">
            </div>
        </div>
        <div>本网站为毕业设计网站，大部分素材来源于网络且此网站仅用于学习用途</div>
    </div>
</template>

<style lang="less" type="text/less" scoped>
    a {
        text-decoration: none;
    }

    .footer {
        width: 100%;
        background-color: #fff;
        /*height: 20rem;*/
        /*padding-top: 20px;*/
        /*overflow: hidden;*/
        position: relative;
        border: 0.1px solid #808080;
        box-sizing: border-box;

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
                    width: 10rem;
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
        &:hover{
            color: blue;
        }
    }

</style>

<script>
    export default {
        name: "footer2",
        data() {
            return {
                msg: 123,
                imgSrc: '/img/',
                hover: false,
            }
        },
        methods: {

        }
    }
</script>

<!--<style lang="stylus" type="text/stylus" scoped>-->
<!--    .foot-->
<!--        width 100%-->
<!--        background-color #fff-->
<!--        height 25rem-->

<!--    div-->
<!--        /*background-color #000*/-->
<!--        width 80%-->
<!--        margin 0 auto-->
<!--        background-color #000-->
<!--        height &height-->
<!--    /*text-align center*/-->


<!--</style>-->

