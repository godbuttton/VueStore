<template>
    <div>
        <div>
            <headerpart></headerpart>
            <productListContent></productListContent>
            
            <footerpart></footerpart>
        </div>
    </div>
</template>
<script>
    import headerpart from "../components/header.vue"
    import footerpart from "../components/footer.vue"
    import productListContent from "../components/productListContent.vue"
  
    export default {
        data() {
            return {
                name: "产品列表"
            }
        },
        components: {
            headerpart,
            footerpart,
            productListContent
         
        }
    }
</script>