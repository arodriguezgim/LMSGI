<script setup>
    //Hemos de crear la logica para importar la informacion de este pokemon en específico
    import axios from 'axios';
    import { ref } from 'vue';
    //useRoute es lo que tiene acceso a todos los parametros que pasemos
    import { useRoute, useRouter } from 'vue-router';

    const route = useRoute();
    const router = useRouter();
    const volver = () => {
        router.push('/pokemons');
    }

    const poke = ref({});

    const getData = async () => {
        try {
            const data = await axios.get(`https://pokeapi.co/api/v2/pokemon/${route.params.name}`);
            //console.log(data);
            poke.value = data.data;
        } catch(error) {
            console.log(error);
        }
    }

    getData();
</script>
<template>
    <div v-if="poke">
        <img :src="poke.sprites?.front_default" alt="">
        <h1>Pokemon Detail - Nombre: {{ $route.params.name }}</h1>
        <button @click="volver">Volver</button>
    </div>
    
</template>