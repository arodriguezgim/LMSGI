<script setup>
    const nombre = "Vue 3";

    //método hacerClick
    const hacerClick = ( mensaje ) => {
      console.log( mensaje );
    }

</script>

<template>
  <h1>Hola {{ nombre }}</h1>
  <button v-on:click.left="hacerClick('Click desde el Botón 1')">Boton 1</button>
  <button @click.middle="hacerClick('Click desde el botón 2')">Botón 2</button>
  <button @click.right="hacerClick('Click desde el botón 2')">Botón 3</button>

</template>

<style>
  h1 {
    color: red;
  }
</style>




















