export function isAuth(tableName, key) {
  let role = localStorage.getItem("UserTableName");
  let menus = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["新增","查看","修改","删除"],"menu":"教师","menuJump":"列表","tableName":"jiaoshi"}],"menu":"教师管理"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["新增","查看","修改","删除"],"menu":"绘画类型","menuJump":"列表","tableName":"huihualeixing"}],"menu":"绘画类型管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改","删除"],"menu":"学生画作","menuJump":"列表","tableName":"xueshenghuazuo"}],"menu":"学生画作管理"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["查看","修改","删除","查看评论"],"menu":"画作课程","menuJump":"列表","tableName":"huazuokecheng"}],"menu":"画作课程管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看","修改","删除","学生成绩","学生成绩统计"],"menu":"画作检查","menuJump":"列表","tableName":"huazuojiancha"}],"menu":"画作检查管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看","修改","删除","审核","查看评论","绘画票数统计"],"menu":"绘画分享","menuJump":"列表","tableName":"huihuafenxiang"}],"menu":"绘画分享管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","修改","删除"],"menu":"绘画投票","menuJump":"列表","tableName":"huihuatoupiao"}],"menu":"绘画投票管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["新增","查看","修改","删除","查看评论"],"menu":"知识科普","menuJump":"列表","tableName":"zhishikepu"}],"menu":"知识科普管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改","删除","学生笔记数"],"menu":"学习进度","menuJump":"列表","tableName":"xuexijindu"}],"menu":"学习进度管理"},{"child":[{"appFrontIcon":"cuIcon-goodsnew","buttons":["新增","查看","修改","删除"],"menu":"文章类型","menuJump":"列表","tableName":"wenzhangleixing"}],"menu":"文章类型管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-camera","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"网站公告","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看","学习笔记"],"menu":"画作课程列表","menuJump":"列表","tableName":"huazuokecheng"}],"menu":"画作课程模块"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","绘画投票"],"menu":"绘画分享列表","menuJump":"列表","tableName":"huihuafenxiang"}],"menu":"绘画分享模块"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看"],"menu":"知识科普列表","menuJump":"列表","tableName":"zhishikepu"}],"menu":"知识科普模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["新增","查看","修改","删除"],"menu":"学生画作","menuJump":"列表","tableName":"xueshenghuazuo"}],"menu":"学生画作管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看"],"menu":"画作检查","menuJump":"列表","tableName":"huazuojiancha"}],"menu":"画作检查管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除","查看评论"],"menu":"绘画分享","menuJump":"列表","tableName":"huihuafenxiang"}],"menu":"绘画分享管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看"],"menu":"绘画投票","menuJump":"列表","tableName":"huihuatoupiao"}],"menu":"绘画投票管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","删除","修改"],"menu":"学习进度","menuJump":"列表","tableName":"xuexijindu"}],"menu":"学习进度管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看","学习笔记"],"menu":"画作课程列表","menuJump":"列表","tableName":"huazuokecheng"}],"menu":"画作课程模块"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","绘画投票"],"menu":"绘画分享列表","menuJump":"列表","tableName":"huihuafenxiang"}],"menu":"绘画分享模块"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看"],"menu":"知识科普列表","menuJump":"列表","tableName":"zhishikepu"}],"menu":"知识科普模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","画作检查","删除"],"menu":"学生画作","menuJump":"列表","tableName":"xueshenghuazuo"}],"menu":"学生画作管理"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["新增","查看","修改","删除","查看评论"],"menu":"画作课程","menuJump":"列表","tableName":"huazuokecheng"}],"menu":"画作课程管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看","删除","学生成绩统计"],"menu":"画作检查","menuJump":"列表","tableName":"huazuojiancha"}],"menu":"画作检查管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看","学习笔记"],"menu":"画作课程列表","menuJump":"列表","tableName":"huazuokecheng"}],"menu":"画作课程模块"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","绘画投票"],"menu":"绘画分享列表","menuJump":"列表","tableName":"huihuafenxiang"}],"menu":"绘画分享模块"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看"],"menu":"知识科普列表","menuJump":"列表","tableName":"zhishikepu"}],"menu":"知识科普模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"教师","tableName":"jiaoshi"}];
  for(let i=0;i<menus.length;i++){
    if(menus[i].tableName==role){
      for(let j=0;j<menus[i].frontMenu.length;j++){
          for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
            if(tableName==menus[i].frontMenu[j].child[k].tableName){
              let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
              return buttons.indexOf(key) !== -1 || false
            }
          }
      }
    }
  }
  return false;
}

/**
 *  * 获取当前时间（yyyy-MM-dd hh:mm:ss）
 *   */
export function getCurDateTime() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate(),
    hour = currentTime.getHours(),
    minute = currentTime.getMinutes(),
    second = currentTime.getSeconds();
    return year + "-" + month + "-" + day + " " +hour +":" +minute+":"+second;
}

/**
 *  * 获取当前日期（yyyy-MM-dd）
 *   */
export function getCurDate() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate();
    return year + "-" + month + "-" + day;
}
