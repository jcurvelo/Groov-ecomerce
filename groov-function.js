// document.querySelector('.go-left').innerHTML = '<';

async function getData(){
    let api = await fetch('GroovAPI.php');
    let data = await api.json();
    return data;
}


const queryString = window.location.search;

if(queryString == '?err=1'){
    alert('Usuario o clave inválido')
}

function checkValidation(form){
    form.submit();
}

//
let itemsArr = getData();
console.log(itemsArr)

Vue.component('item-box',{
    props:['product_name','product_price','product_img'],
    template: `
    <div class="item-box mt-4">
        <div class="item-image">
            <img :src="product_img" :alt="product_img">
        </div>
        <div class="item-name">{{ product_name }}</div>
        <div class="item-price">{{ product_price }}$</div>
        <div class="button"><button>Agregar al carrito</button</div>
    </div>    
    `
})

//
let hasCookie = document.cookie;
let cookieSplit;
let cookieName;
if(hasCookie){
    cookieSplit = hasCookie.split('=');
    cookieName = cookieSplit[1].split(';')
}


Vue.component('topbar',{
    data:function(){
        return{
            isLogged: hasCookie,
            username: cookieName[0],
            isHidden: true
        }
    },
    template:`
    <nav class="navbar bg-secondary d-flex justify-contnet-between">
        <a href="./index.html" class="navbar-brand text-white">
            <img src="./img/logo.png" alt="logo-groov" class="logo">
        </a>
        <div v-if="isLogged" class="navbar-options d-flex flex-column p-1">
            <span v-on:click="isHidden = !isHidden" id="userMenuBtn">{{ username }}</span>
            <div class="userMenu bg-light flex-column" :class="{'d-none': isHidden}">
                <a href="#">Carrito</a>
                <a href="#">Configuración</a>
                <a href="logout.php">Salir</a>
            </div>
        </div>
        <div v-else class="navbar-options d-flex justify-contnet-between p-1">
            <a href="login.html" class="text-white m-2">Ingresar</a>
            <a href="register.html" class="text-white m-2">Registrarse</a>
        </div>
    </nav>
    `
});

//Componente nuevo para el carrito
Vue.component('item-box',{
    props:['product_name','product_price'],
    template: `
    <div class="item-box mt-4">
        <div class="item-image">
            <!-- <img src="" alt=""> -->
        </div>
        <div class="item-name">{{ product_name }}</div>
        <div class="item-price">{{ product_price }}$</div>
        <div class="button"><button>Eliminar del carrito</button</div>
    </div>    
    `
})

new Vue({
    el: '#best-selling',
    data: {
        hola: 'Holaa',
        items:[1,2,3,4,5,6,7]
    }
});

const topBar = new Vue({
    el: '#topbar',
    data:{
        hola: 'hola',
        ok: true
    }
})

