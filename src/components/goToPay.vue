<template>
    <div class="totlePrice">
        <p>总计：<span>￥2520</span>
        </p>
        <p>
            <router-link to="payPage">
                在线支付
            </router-link>
        </p>
    </div>
</template>
<script>
    export default {
        data() {
            return {}
        }
    }
</script>
<style>
    .totlePrice {
        margin: 1.0rem 0;
        padding-right: 1.2rem;
    }
    
    .totlePrice p {
        font-size: 20px;
        text-align: right;
        color: #333;
    }
    
    .totlePrice>p>span {
        font-weight: bold;
        font-size: 2rem;
        color: #FE5939
    }
    
    .totlePrice a {
        margin-top: 0.5rem;
        color: #fff;
        background-color: #5cb85c;
        border-color: #4cae4c;
        display: inline-block;
        padding: 6px 12px;
        margin-bottom: 0;
        font-size: 20px;
        font-weight: normal;
        line-height: 1.42857143;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        -ms-touch-action: manipulation;
        touch-action: manipulation;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        background-image: none;
        border: 1px solid transparent;
        border-radius: 4px;
    }
</style>