<template>
    <div>
        <ul class="product-sort">
            <li class="active"><a href="#">零食</a></li>
            <li><a href="#">生活用品</a></li>
            <li><a href="#">最热</a></li>
        </ul>
        <ul>
            <li v-for="item in list" class="pruductItems">
                <div>
                    <img src="../assets/logo.png" alt="">
                </div>
                <div>
                    <h4>{{item.pname}}</h4>
                    <p>价格：￥{{item.price}}</p>
                    <p>销量:{{item.sales}}</P>
                    </div>
                    <div>
                        <p><i class="fa fa-heart-o" aria-hidden="true"></i></p>
                        <p><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></p>
                    </div>
                </li>
            </ul>
        </div>
    </template>
    <script>
        export default {
            data() {
                return {
                    list:[]
                }
            },
            created(){
             this.$http.jsonp('http://localhost/VueStore/php&sql/selectPage.php?callback=res')
             .then((res) => {  //jsonp方式请求数据 
                            // success callback
                        this.list=res.body;   //得到productList
                    }, (response) => {
                        // error callback
                        console.err("请求失败"+response);
                    });
         }
     }
 </script>
 <style>
    .product-sort {
        overflow: hidden
    }

    .product-sort li {
        border: 2px solid transparent;
        display: inline-block;
        width: 31%;
        text-align: center;
        padding-top: 0.3rem;
        line-height: 1.2rem
    }
    
    .product-sort li a {
        font-weight: bold;
        color: #FE5939
    }
    
    .product-sort li.active {
        border-bottom: 2px solid #FE5939;
    }
    
    .pruductItems {
        overflow: hidden;
        display: table
    }
    
    .pruductItems div {
        display: table-cell;
        width: 31.3%;
        vertical-align:middle;
    }
    
    .pruductItems img {
        vertical-align: bottom;
        width: 80%;
    }
    
    .pruductItems>div:nth-child(2) {
        padding-bottom: 6px

    }
    .pruductItems>div:nth-child(2) p,.pruductItems>div:nth-child(2) h4 {
       padding:0.2rem;
   }
   .pruductItems>div:last-child p {
    text-align: center;
    padding:0.6rem;
}
.pruductItems>div:last-child p i::before{
    font-size: 1.6rem;
    color:#FE5939
}
</style>