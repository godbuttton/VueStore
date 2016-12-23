<template>
    <div class="bg-container"> 
        <router-link to="/homepage">
        <img src="../assets/img-404.jpg" alt="">
        </router-link>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                name: "404"
            }
        }
    }
</script>
<style>
    #app{
        overflow: hidden
    }
    .bg-container{
        text-align: center
    }
    .bg-container img{
        width: 65%;
    }
</style>