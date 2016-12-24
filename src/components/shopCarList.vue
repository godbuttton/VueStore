<template>
    <div>
        <div class="clearContainer">
            <p class="clearShopCar"><span>&times;清空购物车</span></p>
        </div>
        <table class="carItmes">
            <tbody>
                <tr v-for="product in car">
                    <td>
                        <img src="../assets/logo.png" alt=""> 康师傅牛肉
                    </td>
                    <td>
                        <b>￥4.50</b>
                        <a href="+">+</a>
                        <span>24</span>
                        <a href="-">-</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                car:[{
                    pname:"康师傅牛肉面"
                },{
                    pname:"康师傅牛肉面"
                },{
                    pname:"康师傅牛肉面"
                },{
                    pname:"康师傅牛肉面"
                }]
            }
        }
    }
</script>
<style>
    .clearShopCar {
        font-size: 18px;
        margin-top: 1.2rem;
        margin-bottom: 0.6rem;
        text-align: right;
        border-bottom: 2px solid #A58C85;
        color: #ccc;
        padding-bottom: 0.5rem;
    }
    
    .clearContainer {
        padding: 0 0.8rem
    }
    
    .carItmes {
        width: 100%;
    }
    
    .carItmes td {
        text-align: center;
        width: 50%;
    }
    .carItmes td img{
        margin-right: 0.2rem;
        width: 2.5rem;
        vertical-align: middle;
    }
     .carItmes td b{
         margin-right: 0.3rem;
         color:#FE4129
     }
     .carItmes>tbody>tr>td a{
        
         color: white;
         line-height: 1.8rem;
         font-size: 1.3rem;
         font-weight: bold;
         background: #EE5C42;
         display: inline-block;
         width: 1.8rem;
         height: 1.8rem;
         border-radius:50%;
     }
</style>