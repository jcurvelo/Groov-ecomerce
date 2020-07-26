document.querySelector('.go-left').innerHTML = '<';

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

new Vue({
    el: '#best-sell',
    
});


