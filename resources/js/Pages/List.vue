<script setup>
    import Card from '@/Components/Card.vue';
    import FooterNav from '@/Components/FooterNav.vue';

    const props = defineProps({
    activities: Array,
    });

    const imgPath = (activity) => {
    let path = '';
    
            path = 'storage/img/' + activity.image;
            console.log(activity.image);
            return path;
        
}
</script>
<template>
<div class="bg-gradient-to-b from-moonstone to-[#539ABB] relative">
<!--HEADER-->
<header class="pl-6">
            <h1 class="text-slate-50 text-4xl font-bold py-10">Together</h1>
            <div class="flex items-center">
                <div class="relative">
                    <input
                        class="pl-10 pr-4 py-2 border-0 bg-jellybeanblue rounded-2xl placeholder:text-semibold focus:ring-slate-500 placeholder:text-[#99BBC5] text-slate-50 text-medium "
                        type="text"
                        placeholder="Chercher des activités"
                    >
                    <div class="absolute inset-y-0 left-0 flex items-center pl-3  text-slate-50">
                        <svg
                        class="w-6 h-6"
                        fill="none"
                        stroke="currentColor"
                        viewBox="0 0 24 24"
                        xmlns="http://www.w3.org/2000/svg"
                        >
                        <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="M15.5 15.5L20 20M10 17C6.68629 17 4 14.3137 4 11C4 7.68629 6.68629 5 10 5C13.3137 5 16 7.68629 16 11C16 14.3137 13.3137 17 10 17Z"
                        ></path>
                        </svg>
                    </div>
                </div>
                
                <button type="button" class="text-slate-50 pl-4"><svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-slate-50" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M3 3a1 1 0 011-1h12a1 1 0 011 1v3a1 1 0 01-.293.707L12 11.414V15a1 1 0 01-.293.707l-2 2A1 1 0 018 17v-5.586L3.293 6.707A1 1 0 013 6V3z" clip-rule="evenodd" />
                    </svg></button>

                <button type="button" class="pl-4"><svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-slate-50" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M12 1.586l-4 4v12.828l4-4V1.586zM3.707 3.293A1 1 0 002 4v10a1 1 0 00.293.707L6 18.414V5.586L3.707 3.293zM17.707 5.293L14 1.586v12.828l2.293 2.293A1 1 0 0018 16V6a1 1 0 00-.293-.707z" clip-rule="evenodd" />
                    </svg></button>
            </div>
        </header>
        <!--/HEADER-->
        <main class="mt-14 mb-6">
                <h2 class="pl-6 text-slate-50 font-bold text-xl mb-6">Activités</h2>
                <Card v-for="activity in activities" :item="activity" :img="imgPath(activity)" class="mb-6 w-4/6"></Card>
        </main>
        <footer>
            <FooterNav class="fixed bottom-0"></FooterNav>
        </footer>
</div>
</template>