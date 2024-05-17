<script setup>
defineProps(['inicio','fin','tamanio']);
// Hemos de recibir los metodos
const emit = defineEmits(['siguiente','anterior']);

const activarSiguiente = () => {
    //console.log("Pulsaste en Siguiente!!!!!");
    emit('siguiente');
}

</script>

<template>
    <div class="btn-group" role="group" aria-label="Basic example">
        <button @click="emit('anterior')" type="button" class="btn btn-outline-primary" :disabled="inicio<=0">Anterior </button>
        <button @click="activarSiguiente" type="button" class="btn btn-outline-primary" :disabled="fin>=tamanio">Siguiente </button>
    </div>
</template>