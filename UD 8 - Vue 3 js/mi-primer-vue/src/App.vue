<script setup>
    const nombre = "Vue 3";
    const objetoFruta = 
        {
            name: "Manzana",
            price: "$1.00",
            description: "Una manzana",
        };
</script>

<template>
  <h1>Hola {{ nombre }}</h1>
  <ul>
    <!-- El :key ha de ser algo que no se repita en el elemento-->
      <li v-for=" (valor, propiedad ) in objetoFruta"> 
        {{ propiedad }} : {{ valor }}
      </li>
  </ul>

</template>

<style>
  h1 {
    color: red;
  }
</style>




















