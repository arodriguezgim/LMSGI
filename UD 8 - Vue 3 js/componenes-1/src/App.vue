<script setup>
  import { ref } from 'vue';
  import BlogPost from './components/BlogPost.vue';
  import ButtonCounter from './components/ButtonCounter.vue';
  import PaginatePost from './components/PaginatePost.vue';
  import LoadingSpinner from './components/LoadingSpinner.vue';

  // 1 - Me creo un array de objetos
  const posts = ref([]);
  //No todas las variables han de ser siempre reactivas
  const postXPagina = 10;
  const inicio = ref(0);
  const fin = ref(postXPagina);

  const loading = ref(true);
  
  const favorito = ref('');

  // Me creo una funcion para cambiar mi post favorito
  const cambiarFavorito = ( post ) => {
      favorito.value = post;
  }

  // Me creo unmetodo correspondiente a la accion de pulsar el boton
  const siguiente = () => {
    // Aqui tenemos que generar la logica
    inicio.value = inicio.value + postXPagina;
    fin.value = fin.value + postXPagina;
  };
  const anterior = () => {
    // Aqui tenemos que generar la logica
    inicio.value = inicio.value - postXPagina;
    fin.value = fin.value - postXPagina;
  };

  fetch('https://jsonplaceholder.typicode.com/posts')
    .then( res => res.json() )
    //.then( (data) => console.log(data));
    .then( (data)=>posts.value=data)
    .finally( ()=>{
      setTimeout(()=>{
        loading.value = false;
      }, 1000)
    }  );
  // Como tenemos todos los posts en el componente principal, implementaremos toda la lógica aquí (la de pulsar el botón, sumar, etc)
</script>

<template>
  <LoadingSpinner v-if="loading"/>
  <div class="container" v-else>
    <h1>Componentes</h1>
    <h2>Mi Post Favorito: {{ favorito }}</h2>

    <!-- Como son metodos los podemos enviar como metodos personalizados-->
    <PaginatePost class="mb-2" @siguiente="siguiente" @anterior="anterior" :inicio="inicio" :fin="fin" :tamanio="posts.length" />
    <!--Slice es un metodo que corta el array indicándole el inicio y el final (no incluído)-->
    <BlogPost v-for="post in posts.slice(inicio,fin)" 
      :key="post.id" 
      :titulo="post.title" 
      :id="post.id" 
      :body="post.body"
      @cambiarNombreFavorito="cambiarFavorito"/>
  </div>

  
</template>