<script setup>
import { ref } from 'vue';
import { Head, Link, router } from '@inertiajs/vue3';

defineProps({
    title:String,
});

const bg = ref(true);

</script>

<template>
    <div :class="{'bg-gradient-to-b from-moonstone to-[#539ABB]' : bg, 'bg-slate-50' : ! bg}">
        <Head :title="title" />
        <slot></slot>

    </div>

</template>