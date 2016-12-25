<template>
    <div class="footer">
        <ul v-show="menuDisplay">
            <li>
                <router-link to="/productListPage" class="linkStyle">
                    <i class="fa fa-home" aria-hidden="true"></i>
                    <span>购物</span>
                </router-link>
            </li>
            <li>
                <router-link to="/shopCar" class="linkStyle">
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <span>购物车</span>
                </router-link>
            </li>
            <li>
                <router-link to="/myOrder" class="linkStyle">
                <i class="fa fa-file-text-o" aria-hidden="true"></i>
                <span>订单</span>
                </router-link>
            </li>
            <li>
                <router-link to="userCenter" class="linkStyle">
                <i class="fa fa-user" aria-hidden="true"></i>
                <span>我的</span>
                </router-link>
            </li>
        </ul>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                menuDisplay: true,
                storeName: "嘿店"
            }
        }
    }
</script>
<style>
    .footer {
        background: rgba(255,255,255, 1);
        position: fixed;
        bottom: 0;
        padding: 0  5px;
        width: 100%;
        height: 3.3rem;
        border-top: 1px solid #bbb;
        border-bottom: none
    }
    .footer ul {
        width: 100%;
        overflow: hidden;
    }
    
    .footer ul li {
        text-align: center;
        width: 25%;
        padding: 12px;
        float: left
    }
    .footer ul li i {
        text-align: center;
        display: block;
    }
    .linkStyle{
        color: #333;
        text-decoration: none;
    }
</style>