<template>
    <div>
        <headerpart></headerpart>
        <h2>订单</h2>
        <div class="item-plate" v-for="order in orders">
            <p><span>下单时间</span>  <span>订单已完成</span></p>
            <p><span>[热]康师傅酸菜面等3件商品</span>  <span>订单已完成</span></p>
            <p><span>评价</span></p>
        </div>
        <footerpart></footerpart>
    </div>
</template>
<script>
    import headerpart from "../components/header.vue"
    import footerpart from "../components/footer.vue"
    export default {
        data(){
            return{
            orders:[{
                
            },{
                
            }]
        }
        },
        components:{
            headerpart,
            footerpart
        }

    }
</script>
<style>

</style>