document.querySelector('.go-left').innerHTML = '<';

let root = document.documentElement;
let counter = 0;

// fetch('./useful-data.json')
// .then(response => response.json())
// .then((data)=>{
//     setInterval(() => {
//         counter++
//     }, 2000);
//     root.style.setProperty('--carousel-image',`url("${data.imgForCarousel[2]}")`);
// })



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
    data: {
        hola: 'Howaaa',
        items:[1,2,3,4,5,6,7]
    }
});


