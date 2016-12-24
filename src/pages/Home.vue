<template>
    <div class="homePage">
        <router-link to="/productListPage">
        <img src="../assets/shop.png" alt="">
        </router-link>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                name: "我是主页",
            }
        }
    }
</script>
<style>
    .homePage img {
        display: block;
        height: 100%;
        position: fixed;
        top: 0px;
        left: 0px;
    }
</style>