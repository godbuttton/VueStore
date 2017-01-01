<template>
    <div class="bodyContent">
        <headerpart></headerpart>
        <div class="headPortrait">
            <span v-html="userNameInfo.userLogo"> </span>
            <span>{{userNameInfo.vUserName}}</span>
            <span></span>
        </div>
        <ul class="userItems" >
            <li class="userItem" v-for="(item,index) in userList" @click="itemSwitch(index)">
                <i v-html="item.icon"></i>
                <p>{{item.title}}
                </p>
                <span>></span>
            </li>
        </ul>
        <div id="loginBox" v-show="loginBoxShow">
            <label for="username" class="username">用户名：</label><input id="username"  v-model="userNameInfo.uname" type="text"><br>
            <label for="upwd" class="upwd">密码：</label><input  id="upwd"  v-model="userNameInfo.upwd" type="password"><br>
            <button id="login" @click="login()">登录</button>
        </div>
        <footerpart></footerpart>
    </div>
</template>
<script>
    import headerpart from "../components/header.vue"
    import footerpart from "../components/footer.vue"
    export default {
        data() {
            return {
                userList: [{
                    icon: '<i class="fa fa-map-marker" aria-hidden="true"></i>',
                    title: "收货地址"
                }, {
                    icon: '<i class="fa fa-user-o" aria-hidden="true"></i>',
                    title: "昵称"
                }, {
                    icon: '<i class="fa fa-pencil-square-o" aria-hidden="true"></i>',
                    title: "修改密码"
                }, {
                    icon: '<i class="fa fa-id-card-o" aria-hidden="true" ></i>></i>',
                    title: "注册/登录"
                }, {
                    icon: '<i class="fa fa-commenting" aria-hidden="true"></i>',
                    title: "联系我们"
                }],
                userNameInfo: {
                    vUserName:"请登录",
                    uname: "u1",
                    upwd:123456,
                    userLogo: '<img src="./src/assets/logo.png">'
                },
                loginBoxShow:false
            }
        },
        methods:{
            itemSwitch:function(index){
                switch(index){
                    case 3:
                    this.loginBox();
                    break;
                }
            },
            loginBox:function(){
                this.loginBoxShow=!this.loginBoxShow;   
            },
            login:function(){
              this.$http.jsonp('http://localhost/VueStore/php&sql/login.php?uname='+this.userNameInfo.uname+'&upwd='+this.userNameInfo.upwd+'&callback=res')
              .then((res) => {  
                    //jsonp方式请求数据 
                    // success callback
                 console.log(res.bodyText.length);
                    console.log(res.bodyText=="\"ok\"");
                    console.log(res.bodyText);
                    if(res.bodyText=="\"ok\""){
                        console.log(1);
                        this.userNameInfo.vUserName=this.userNameInfo.uname;
                        this.loginBoxShow=false;
                    }
                    else{
                    alert("用户名或者密码不对")
                    } 

                }, (response) => {
                    // error callback
                    console.err("请求失败"+response);
                });
          }

      },
      components: {
        headerpart,
        footerpart
    }
}
</script>
<style>

    .username{
        margin-left: -1.1rem;
    }
    #loginBox{
        background: #ddd;
        width: 95%;

        height: 13rem;
        padding: 1.42rem;
        position: absolute;
        top: 50%;   
        left: 50%;
        transform: translateX(-50%);
        text-align: center;
        box-shadow: 0.3rem 0.3rem 1px #888888;         
        font-size: 1.4rem;
    }
    #loginBox input{
        font-size: 1.4rem;
        width: 15rem;
        height: 2rem;
        margin: 0.8rem;
        border: none;
    }
    #loginBox button{
        color: white;
        width: 8rem;
        height: 1.8rem;
        background: green;
    }

    .headPortrait {
        display: table;
        width: 100%;
        height: 5.72rem;
        background: #81393c;
    }
    
    .headPortrait>span {
        color: #eee;
        font-size: 1.5rem;
        font-weight: bold;
        vertical-align: middle;
        height: 5.72rem;
        display: table-cell;
        width: 30%;
    }
    .headPortrait>span:first-child{
        padding-left: 2rem;
    }
    .headPortrait>span:last-child{
       text-align: left;
   }
   .headPortrait>span img {
    background: #eee;
    border-radius: 50%;
    width: 50%;
}

.userItems {
    overflow: hidden;
}

.userItem {
    border-bottom: 1px solid #ccc;
    box-shadow: 2px 0px 1px #ddd;
    height: 4.43rem;
    position: relative;
    background: #eee;
}

.userItem>p {
    font-size: 1.2rem;
    font-weight: bold;
    line-height: 4.43rem;
    margin-left: 4rem;
    padding-right: 2.5rem;
    color: #333;
}

.userItem>span {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    right: 1.2rem;
}

.userItem i {
    left: 0.5rem;
    transform: translateY(-50%);
    position: absolute;
    top: 50%;
}

fa-id-card-o,
fa-commenting,
fa-pencil-square-o,
.fa-user-o:before,
.fa-map-marker::before {
    font-size: 1.43rem;
}
</style>