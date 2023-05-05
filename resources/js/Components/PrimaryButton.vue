<script setup>
defineProps({
    type: {
        type: String,
        default: 'submit',
    },
});
</script>

<template>
    <button :type="type" class="inline-flex items-center px-4 py-2 bg-caribbeangreen text-slate-50 border border-transparent rounded-md font-semibold text-xs uppercase tracking-widest hover:bg-jellybeanblue focus:bg-jellybeanblue active:bg-jellybeanblue focus:outline-none focus:ring-2 focus:ring-offset-2 transition ease-in-out duration-150">
        <slot />
    </button>
</template>
