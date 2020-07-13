// resources/assets/js/router/index.js
import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

export default new VueRouter({
  saveScrollPosition: true,
  routes: [
    {
      name: 'index',
      path: '/',
      component: resolve => void (require(['../components/ExampleComponent.vue'], resolve))
    },
    {
      name: 'new',
      path: '/new',
      component: resolve => void (require(['../components/new.vue'], resolve))
    },
    {
      name: 'about',
      path: '/about',
      component: resolve => void (require(['../components/template/footer2.vue'], resolve))
    },
    {
      name: 'Material',
      path: '/Material',
      component: resolve => void (require(['../components/Material.vue'], resolve))
    }, {
      name: 'Intangible',
      path: '/Intangible',
      component: resolve => void (require(['../components/Intangible.vue'], resolve))
    }, {
      name: 'info',
      path: '/info',
      component: resolve => void (require(['../components/info.vue'], resolve))
    },
    {
      name: 'articlesInfo',
      path: '/articlesInfo',
      component: resolve => void (require(['../components/articlesInfo.vue'], resolve))
    }
    ,
    {
      name: 'videoInfo',
      path: '/videoInfo',
      component: resolve => void (require(['../components/videoInfo.vue'], resolve))
    },
    {
      name: 'search',
      path: '/search',
      component: resolve => void (require(['../components/search.vue'], resolve))
    }
  ]
});
