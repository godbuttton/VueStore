<template>
    <div>
        <headerpart></headerpart>
        <div class="headPortrait">
            <span v-html="userNameInfo.userLogo"> </span>
            <span>{{userNameInfo.userName}}</span>
            <span></span>
        </div>
        <ul class="userItems">
            <li class="userItem" v-for="item in userList">
                <i v-html="item.icon"></i>
                <p>{{item.title}}
                </p>
                <span>></span>
            </li>
        </ul>
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
                    icon: '<i class="fa fa-id-card-o" aria-hidden="true"></i>></i>',
                    title: "注册"
                }, {
                    icon: '<i class="fa fa-commenting" aria-hidden="true"></i>',
                    title: "联系我们"
                }],
                userNameInfo: {
                    userName: "张三丰",
                    userLogo: '<img src="./src/assets/logo.png">'
                }
            }
        },
        components: {
            headerpart,
            footerpart
        }
    }
</script>
<style>
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