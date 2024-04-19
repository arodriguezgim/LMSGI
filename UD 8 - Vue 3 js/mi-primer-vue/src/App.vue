<script setup>
    import { ref, computed } from 'vue';

    const nombre = "Vue 3";

    // Voy a convertir el contador en una variable reactiva
    const contador = ref(0);

    const incrementar = () => {
      //contador++;
      contador.value++;
    };
    const decrementar = () => {
      contador.value--;
    };
    const resetear = () => {
      contador.value = 0;
    };

    const claseContador = computed( ()=>{
      if ( contador.value === 0 ) return 'zero';
      return contador.value > 0 ? 'positive' : 'negative';
    });


</script>

<template>
    <h1>Hola {{ nombre }}</h1>
    <h2 :class="claseContador">{{ contador }}</h2>
    <button @click="incrementar">Incrementar</button>
    <button @click="decrementar">Decrementar</button>
    <button @click="resetear">Resetear</button>
</template>

<style>
  h1 {
    color: red;
  }
  .negative{
    color: red;
  }
  .positive{
    color: green;
  }
  .zero{
    color: peru;
  }
</style>




















