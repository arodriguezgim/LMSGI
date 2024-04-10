<style>
  h1 {
    color: red;
  }
</style>

<script setup>
  const nombre = "Alberto";
  const estilo = "color:blue";
  const activo = false;
  const colores = ["blue", "red", "green"];
</script>

<template>
  <h1>Hola {{ nombre.toUpperCase() }}</h1>
  <h2 :style="estilo">Hola a toda la clase de DAM 1. Soy azul</h2>
  <h2>{{ activo ? "Estoy activo" : "Estoy inactivo" }}</h2>
  <h2>{{ colores }}</h2>
</template>