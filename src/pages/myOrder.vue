<template>
    <div class="j-myOrder">
        <headerpart></headerpart>
        <h2>订单</h2>
        <div class="item-plate" v-for="order in orders">
            <h3><span>下单时间</span> <span>订单已完成<<</span></h3>
            <hr>
            <p><span>[热]康师傅酸菜面等3件商品</span> <span>￥32.00</span></p>
            <p><span>评价</span></p>
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
                orders: [{

                }, {

                }]
            }
        },
        components: {
            headerpart,
            footerpart
        }

    }
</script>
<style>
    .item-plate {
        border-radius: 3px;
        color: #585858;
        margin: 0.8rem;
        height: 6rem;
        box-shadow: 1px 1px 10px 0.6px rgba(0, 0, 0, 0.2);
    }
    
    .j-myOrder>h2 {
        padding-left: 1rem;
        color: #585858;
    }
    
    .item-plate {
        overflow: hidden;
        background: #eee;
    }
    
    .item-plate h3 {
        margin-top: 0.6rem;
        position: relative;
    }
    
    .item-plate h3 span {
        padding: 3px;
        margin: 0.6rem;
        color: #585858;
        font-size: 0.8rem;
    }
    
    .item-plate hr {
        margin: 5px;
    }
    
    .item-plate h3 span:last-child {
        position: absolute;
        right: 0.6rem;
        top: 0rem;
        margin-top: 0.25rem;
    }
    
    .item-plate>p:nth-child(3)>span:nth-child(1) {
        margin-left: 1rem;
    }
    
    .item-plate>p:nth-child(3)>span:nth-child(2) {
        float: right;
        margin-right: 1.2rem;
        color: #E4393c;
        font-weight: bold;
        font-size: 1rem;
    }
    .item-plate>p:last-child {
        text-align: right;
        padding-right: 1.0rem;
        padding-top: 0.4rem;
    }
</style>