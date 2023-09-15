const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm8i489/",
            name: "ssm8i489",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm8i489/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "少儿绘画学习平台"
        } 
    }
}
export default base
