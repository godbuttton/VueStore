<template>
    <div>
        <headerpart></headerpart>
        <h1>这是主页</h1>
        <h2>{{name}}</h2>
    </div>
</template>
<script>
    import headerpart from "../components/header.vue"
  
    export default {
        data() {
            return {
                name: "我是主页"
            }
        },
        components:{
            headerpart
        }
    }
</script>