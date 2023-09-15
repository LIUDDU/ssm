import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import huihuatoupiao from '@/views/modules/huihuatoupiao/list'
    import news from '@/views/modules/news/list'
    import aboutus from '@/views/modules/aboutus/list'
    import wenzhangleixing from '@/views/modules/wenzhangleixing/list'
    import huihualeixing from '@/views/modules/huihualeixing/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import jiaoshi from '@/views/modules/jiaoshi/list'
    import huazuokecheng from '@/views/modules/huazuokecheng/list'
    import xuexijindu from '@/views/modules/xuexijindu/list'
    import discusszhishikepu from '@/views/modules/discusszhishikepu/list'
    import discusshuihuafenxiang from '@/views/modules/discusshuihuafenxiang/list'
    import systemintro from '@/views/modules/systemintro/list'
    import huazuojiancha from '@/views/modules/huazuojiancha/list'
    import xueshenghuazuo from '@/views/modules/xueshenghuazuo/list'
    import discusshuazuokecheng from '@/views/modules/discusshuazuokecheng/list'
    import huihuafenxiang from '@/views/modules/huihuafenxiang/list'
    import config from '@/views/modules/config/list'
    import zhishikepu from '@/views/modules/zhishikepu/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/huihuatoupiao',
        name: '绘画投票',
        component: huihuatoupiao
      }
      ,{
	path: '/news',
        name: '网站公告',
        component: news
      }
      ,{
	path: '/aboutus',
        name: '关于我们',
        component: aboutus
      }
      ,{
	path: '/wenzhangleixing',
        name: '文章类型',
        component: wenzhangleixing
      }
      ,{
	path: '/huihualeixing',
        name: '绘画类型',
        component: huihualeixing
      }
      ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
      ,{
	path: '/jiaoshi',
        name: '教师',
        component: jiaoshi
      }
      ,{
	path: '/huazuokecheng',
        name: '画作课程',
        component: huazuokecheng
      }
      ,{
	path: '/xuexijindu',
        name: '学习进度',
        component: xuexijindu
      }
      ,{
	path: '/discusszhishikepu',
        name: '知识科普评论',
        component: discusszhishikepu
      }
      ,{
	path: '/discusshuihuafenxiang',
        name: '绘画分享评论',
        component: discusshuihuafenxiang
      }
      ,{
	path: '/systemintro',
        name: '系统简介',
        component: systemintro
      }
      ,{
	path: '/huazuojiancha',
        name: '画作检查',
        component: huazuojiancha
      }
      ,{
	path: '/xueshenghuazuo',
        name: '学生画作',
        component: xueshenghuazuo
      }
      ,{
	path: '/discusshuazuokecheng',
        name: '画作课程评论',
        component: discusshuazuokecheng
      }
      ,{
	path: '/huihuafenxiang',
        name: '绘画分享',
        component: huihuafenxiang
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/zhishikepu',
        name: '知识科普',
        component: zhishikepu
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '系统首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
