<template>
    <div>
        <headerpart></headerpart>
        <shopCarList></shopCarList>
        <goTopay></goTopay>
        <footerpart></footerpart>
    </div>
</template>
<script>
    import headerpart from "../components/header.vue"
    import shopCarList from "../components/shopCarList.vue"
    import footerpart from "../components/footer.vue"
    import goTopay from "../components/goTopay.vue"
    export default {
        data() {
            return {

            }
        },
        components: {
            headerpart,
            shopCarList,
            footerpart,
            goTopay
        }

    }
</script>
<style>

</style>