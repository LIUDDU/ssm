import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Storeup from '../pages/storeup/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import xueshengList from '../pages/xuesheng/list'
import xueshengDetail from '../pages/xuesheng/detail'
import xueshengAdd from '../pages/xuesheng/add'
import jiaoshiList from '../pages/jiaoshi/list'
import jiaoshiDetail from '../pages/jiaoshi/detail'
import jiaoshiAdd from '../pages/jiaoshi/add'
import huihualeixingList from '../pages/huihualeixing/list'
import huihualeixingDetail from '../pages/huihualeixing/detail'
import huihualeixingAdd from '../pages/huihualeixing/add'
import xueshenghuazuoList from '../pages/xueshenghuazuo/list'
import xueshenghuazuoDetail from '../pages/xueshenghuazuo/detail'
import xueshenghuazuoAdd from '../pages/xueshenghuazuo/add'
import huazuokechengList from '../pages/huazuokecheng/list'
import huazuokechengDetail from '../pages/huazuokecheng/detail'
import huazuokechengAdd from '../pages/huazuokecheng/add'
import huazuojianchaList from '../pages/huazuojiancha/list'
import huazuojianchaDetail from '../pages/huazuojiancha/detail'
import huazuojianchaAdd from '../pages/huazuojiancha/add'
import huihuafenxiangList from '../pages/huihuafenxiang/list'
import huihuafenxiangDetail from '../pages/huihuafenxiang/detail'
import huihuafenxiangAdd from '../pages/huihuafenxiang/add'
import huihuatoupiaoList from '../pages/huihuatoupiao/list'
import huihuatoupiaoDetail from '../pages/huihuatoupiao/detail'
import huihuatoupiaoAdd from '../pages/huihuatoupiao/add'
import zhishikepuList from '../pages/zhishikepu/list'
import zhishikepuDetail from '../pages/zhishikepu/detail'
import zhishikepuAdd from '../pages/zhishikepu/add'
import xuexijinduList from '../pages/xuexijindu/list'
import xuexijinduDetail from '../pages/xuexijindu/detail'
import xuexijinduAdd from '../pages/xuexijindu/add'
import wenzhangleixingList from '../pages/wenzhangleixing/list'
import wenzhangleixingDetail from '../pages/wenzhangleixing/detail'
import wenzhangleixingAdd from '../pages/wenzhangleixing/add'
import aboutusList from '../pages/aboutus/list'
import aboutusDetail from '../pages/aboutus/detail'
import aboutusAdd from '../pages/aboutus/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'storeup',
					component: Storeup
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'xuesheng',
					component: xueshengList
				},
				{
					path: 'xueshengDetail',
					component: xueshengDetail
				},
				{
					path: 'xueshengAdd',
					component: xueshengAdd
				},
				{
					path: 'jiaoshi',
					component: jiaoshiList
				},
				{
					path: 'jiaoshiDetail',
					component: jiaoshiDetail
				},
				{
					path: 'jiaoshiAdd',
					component: jiaoshiAdd
				},
				{
					path: 'huihualeixing',
					component: huihualeixingList
				},
				{
					path: 'huihualeixingDetail',
					component: huihualeixingDetail
				},
				{
					path: 'huihualeixingAdd',
					component: huihualeixingAdd
				},
				{
					path: 'xueshenghuazuo',
					component: xueshenghuazuoList
				},
				{
					path: 'xueshenghuazuoDetail',
					component: xueshenghuazuoDetail
				},
				{
					path: 'xueshenghuazuoAdd',
					component: xueshenghuazuoAdd
				},
				{
					path: 'huazuokecheng',
					component: huazuokechengList
				},
				{
					path: 'huazuokechengDetail',
					component: huazuokechengDetail
				},
				{
					path: 'huazuokechengAdd',
					component: huazuokechengAdd
				},
				{
					path: 'huazuojiancha',
					component: huazuojianchaList
				},
				{
					path: 'huazuojianchaDetail',
					component: huazuojianchaDetail
				},
				{
					path: 'huazuojianchaAdd',
					component: huazuojianchaAdd
				},
				{
					path: 'huihuafenxiang',
					component: huihuafenxiangList
				},
				{
					path: 'huihuafenxiangDetail',
					component: huihuafenxiangDetail
				},
				{
					path: 'huihuafenxiangAdd',
					component: huihuafenxiangAdd
				},
				{
					path: 'huihuatoupiao',
					component: huihuatoupiaoList
				},
				{
					path: 'huihuatoupiaoDetail',
					component: huihuatoupiaoDetail
				},
				{
					path: 'huihuatoupiaoAdd',
					component: huihuatoupiaoAdd
				},
				{
					path: 'zhishikepu',
					component: zhishikepuList
				},
				{
					path: 'zhishikepuDetail',
					component: zhishikepuDetail
				},
				{
					path: 'zhishikepuAdd',
					component: zhishikepuAdd
				},
				{
					path: 'xuexijindu',
					component: xuexijinduList
				},
				{
					path: 'xuexijinduDetail',
					component: xuexijinduDetail
				},
				{
					path: 'xuexijinduAdd',
					component: xuexijinduAdd
				},
				{
					path: 'wenzhangleixing',
					component: wenzhangleixingList
				},
				{
					path: 'wenzhangleixingDetail',
					component: wenzhangleixingDetail
				},
				{
					path: 'wenzhangleixingAdd',
					component: wenzhangleixingAdd
				},
				{
					path: 'aboutus',
					component: aboutusList
				},
				{
					path: 'aboutusDetail',
					component: aboutusDetail
				},
				{
					path: 'aboutusAdd',
					component: aboutusAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
