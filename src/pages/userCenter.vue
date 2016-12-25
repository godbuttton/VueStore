<template>
<div>
    <headerpart></headerpart>
    <footerpart></footerpart>
</div>
</template>
<script>
 import headerpart from "../components/header.vue"
 import footerpart from "../components/footer.vue"
    export default{
        data(){
            return{}
        },
        components:{
            headerpart,
            footerpart
        }
    }
</script>