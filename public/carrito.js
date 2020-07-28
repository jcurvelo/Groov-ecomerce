Vue.component('articulo',{
    props:['articulo_precio','articulo_nombre','articulo_img', 'id_item'],
    data:function(){
        return{
            quitar:function(form){
                form.submit();
            }
        }
    },
    template:`
    <div id="articulo-box" class="articulo-box row d-flex">
        <div class="articulo-img col">
            <img :src="articulo_img" :alt="articulo_img">
        </div>
        <div class="articulo-desc col-6">
            <h3 class="nombre">{{ articulo_nombre }}</h3>
            <span class="precio-ariculo">{{ articulo_precio }}$</span>
        </div>
        <form method="POST" action="../quitarArticulo.php" class="quitar-articulo col">
            <input name="id_item" :value="id_item" class="d-none"></input>
            <button class="quitar-articulo col" v-on:click="quitar(this.form)">X</button>
        </form>
        
    </div>
    `
});

const aritucloContainer = new Vue({
    el: '#articulo-container'
});

