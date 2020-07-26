// document.querySelector('.go-left').innerHTML = '<';

let root = document.documentElement;
let counter = 0;

function checkValidation(form){
    form.submit();
}


//

Vue.component('item-box',{
    props:['product_name','product_price'],
    template: `
    <div class="item-box mt-4">
        <div class="item-image">
            <!-- <img src="" alt=""> -->
        </div>
        <div class="item-name">{{ product_name }}</div>
        <div class="item-price">{{ product_price }}$</div>
    </div>    
    `
})

const bestSell = new Vue({
    el: '#best-sell'
});


//
Vue.component('topbar',{
    template:`
    <nav class="navbar bg-secondary d-flex justify-contnet-between">
        <a href="./index.html" class="navbar-brand text-white">
            <img src="./img/logo.png" alt="logo-groov" class="logo">
        </a>
        <div class="navbar-options d-flex justify-contnet-between p-1">
            <a href="login.html" class="text-white m-2">Login</a>
            <a href="register.html" class="text-white m-2">Register</a>
        </div>
    </nav>
    `
});

Vue.component('test',{
    template:'<p>PRUEBAAA</p>'
})



const topBar = new Vue({
    el: '#topbar',
    data:{
        hola: 'hola'
    }
})