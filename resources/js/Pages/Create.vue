<script setup>
    import navbar from '@/Components/FooterNav.vue'
    import { Link, useForm } from '@inertiajs/vue3'
    import { computed, ref } from '@vue/reactivity'

    const props = defineProps({
        categories:Array,
    });

    const form = useForm({
        _method:'POST',
        'title':null,
        'category':null,
        'dateActivite':null,
        'heureActivite': null,
        'duration':null,
        'nbrParticipants':null,
        'address':null,
        'city':null,
        'country':null,
        'description':null,
        'image': null,
    });

    const submitForm = () => {
      form.post(`/store/${form.name}`);
    };
</script>
<template>
    <div class="container bg-slate-50">
    <header class="">
        <!--NAVIGATION-->
        <nav class="mb-12 items-center relative w-full px-4 py-4 bg-crystal flex text-slate-50">
          <ul>
            <li>
                <Link href="/dashboard">
                <svg fill="none" class="opacity-100 h-6 w-6 " stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5L3 12m0 0l7.5-7.5M3 12h18"></path>
                </svg>
                </Link>
            </li>

            <li>
                <Link href="/dashboard">
                <button class="rotate-45 absolute right-4 top-3 p-2 rounded-full bg-slate-50 text-center text-slate-800 ">
                    <svg fill="none" stroke="currentColor" class="w-4 h-4" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15"></path>
                    </svg>
                </button>
                </Link>
            </li>
          </ul> 
        </nav>   
    </header>
    <main class="px-6">
        <form :action="`/store/${form.name}`" @submit.prevent="submitForm" method="post" enctype="multipart/form-data">
            
            <!--IMAGE-->
            <div class="px-2 mb-12 relative">
                <label for="image">
                    <div class="p-2 rounded-full bg-slate-900 absolute right-6 top-4">
                        <svg fill="none" class="w-4 h-4 text-slate-50" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M6.827 6.175A2.31 2.31 0 015.186 7.23c-.38.054-.757.112-1.134.175C2.999 7.58 2.25 8.507 2.25 9.574V18a2.25 2.25 0 002.25 2.25h15A2.25 2.25 0 0021.75 18V9.574c0-1.067-.75-1.994-1.802-2.169a47.865 47.865 0 00-1.134-.175 2.31 2.31 0 01-1.64-1.055l-.822-1.316a2.192 2.192 0 00-1.736-1.039 48.774 48.774 0 00-5.232 0 2.192 2.192 0 00-1.736 1.039l-.821 1.316z"></path>
                        <path stroke-linecap="round" stroke-linejoin="round" d="M16.5 12.75a4.5 4.5 0 11-9 0 4.5 4.5 0 019 0zM18.75 10.5h.008v.008h-.008V10.5z"></path>
                        </svg>
                    </div>
                    <img class="shadow-lg shadow-pewter-blue" :src="imgPath" alt="">
                </label>
                <input @change="form.image = $event.target.files[0]" type="file" id="image" name="image" class="" accept="image/png, image/jpeg">
                <div v-if="form.errors.image">{{ form.errors.image }}</div>
                
            </div>
            
           
           <!--TITRE-->
           <label for="titre" class="text-slate-900 font-bold text-sm relative">
                <div class="w-full">Titre
                    <svg fill="none" class="w-4 h-4 absolute right-3 top-7 z-10" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                    </svg>
                </div> 
           </label>
            <div class="relative mb-6">
                <input v-model="form.title" type="text" id="titre" name="titre" class="rounded-lg bg-crystal pr-4 py-1 w-full">
                <div v-if="form.errors.title">{{ form.errors.title }}</div>
            </div>
            
            <!--CATEGORIES-->
            <fieldset class="flex flex-wrap mb-6">
                <legend class="text-slate-900 font-bold mb-4 text-sm">
                    <svg fill="none" stroke="currentColor" class="inline h-6 w-6 mr-3" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M9.568 3H5.25A2.25 2.25 0 003 5.25v4.318c0 .597.237 1.17.659 1.591l9.581 9.581c.699.699 1.78.872 2.607.33a18.095 18.095 0 005.223-5.223c.542-.827.369-1.908-.33-2.607L11.16 3.66A2.25 2.25 0 009.568 3z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6 6h.008v.008H6V6z"></path>
                    </svg>Categories
                </legend>
                <div v-for="category in categories" class="mb-5">
                    <input @click="form.category = category.id" :value="category.id" type="radio" name="category" :id="category.name" class="hidden peer">
                    <label :for="category.name" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    {{ category.name }}
                    </label>
                </div>
                <div v-if="form.errors.category">{{ form.errors.category }}</div>
            </fieldset>

            <!--DATE_ACTIVITE-->
            <label for="dateActivite" class="text-slate-900 font-bold mb-4 text-sm relative">
                <div class="w-full">
                    Date de l'activité
                    <svg fill="none" class="w-4 h-4 absolute right-3 top-7 z-10" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
                </div> 
            </label>
            <div class="mb-6">
                <input v-model="form.dateActivite" type="date" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="dateActivite" name="dateActivite" min="1970-10-27" max="2024-10-27">
                <div v-if="form.errors.dateActivite">{{ form.errors.dateActivite }}</div>
            </div>

            <!--HEURE_ACTIVITE-->
            <label for="heureActivite" class="text-slate-900 font-bold mb-4 text-sm relative">
                <div class="w-full">
                    Heure de l'activité
                    <svg fill="none" class="w-4 h-4 absolute right-3 top-7 z-10" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
                </div> 
            </label>
            <div class="mb-6">
                <input v-model="form.heureActivite" type="time" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="heureActivite" name="heureActivite">
                <div v-if="form.errors.heureActivite">{{ form.errors.heureActivite }}</div>
            </div>

            <!--DUREE_ACTIVITE-->
            <label for="dureeActivite" class="text-slate-900 font-bold mb-4 text-sm relative">
                <div class="w-full">
                    Durée de l'activité
                    <svg fill="none" class="w-4 h-4 absolute right-3 top-7 z-10" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
                </div>
            </label>
            <div class="relative mb-6">
                <input v-model="form.duration" type="time" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="dureeActivite" name="dureeActivite" min="01:00" max="12:00">
                <div v-if="form.errors.duration">{{ form.errors.duration }}</div>
            </div>

            <!--NOMBRE_PARTICIPANTS-->  
            <label for="nbrParticipants" class="text-slate-900 font-bold mb-4 text-sm relative">
                <div class="w-full">
                    Nombre de participants
                    <svg fill="none" class="w-4 h-4 absolute right-3 top-7 z-10" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
                </div>
            </label>
            <div class="mb-6">
                <input v-model="form.nbrParticipants" type="number" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="nbrParticipants" name="nbrParticipants" min="1" max="25">
                <div v-if="form.errors.nbrParticipants">{{ form.errors.nbrParticipants }}</div>
            </div>

            <!--ADRESSE-->
            <label for="address" class="text-slate-900 font-bold mb-4 text-sm relative">
                <div class="w-full">
                    Adresse
                    <svg fill="none" class="w-4 h-4 absolute right-3 top-7 z-10" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
                </div>
            </label>
            <div class="mb-6">
                <input v-model="form.address" type="text" class="rounded-lg bg-crystal relative px-r py-1 w-full" id="address" name="address">
                <div v-if="form.errors.address">{{ form.errors.address }}</div>
            </div>

            <!--VILLE-->
            <label for="city" class="text-slate-900 font-bold mb-4 text-sm relative">
                <div class="w-full">
                    Ville
                    <svg fill="none" class="w-4 h-4 absolute right-3 top-7 z-10" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
                </div>
            </label>
            <div class="mb-6">
                <input v-model="form.city" type="text" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="city" name="city">
                <div v-if="form.errors.city">{{ form.errors.city }}</div>
            </div>

            <!--PAYS-->
            <label for="country" class="text-slate-900 font-bold mb-4 text-sm relative">
                <div class="w-full">
                    Pays
                    <svg fill="none" class="w-4 h-4 absolute right-3 top-7 z-10" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
                </div>
            </label>
            <div class="mb-6">
                <input v-model="form.country" type="text" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="country" name="country">
                <div v-if="form.errors.country">{{ form.errors.country }}</div>
            </div>

            <!--DESCRIPTION ACTIVITE-->
            <label for="description" class="text-slate-900 font-bold mb-4 text-sm relative">
                <div class="w-full">
                    Description de l'activité
                    <svg fill="none" class="w-4 h-4 absolute right-3 top-7 z-10" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
                </div>
            </label>
            <div class="mb-6">
                <textarea v-model="form.description" maxlength="250" class="rounded-lg bg-crystal relative h-52 pr-10 py-1 w-full" id="description" name="description">
                </textarea>
                <div v-if="form.errors.description">{{ form.errors.description }}</div>
            </div>
            <div class="mb-6 flex">
                <button class="text-center mr-3 rounded-lg bg-jellybeanblue font-medium text-slate-50 py-2 px-4" type="submit">
                    Enregistrer
                </button>
                <Link href="/dashboard" as="button">
                    <button class="text-center rounded-lg bg-transparent border-jellybeanblue border-2 border-solid font-medium text-jellybeanblue py-2 px-4" type="button">
                    Annuler
                    </button>
                </Link>
                
            </div>
        </form>
    </main>
    <footer>
        <navbar></navbar>
    </footer>
    </div>
</template>
<style>
   input[type="date"]::-webkit-calendar-picker-indicator {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: auto;
    height: auto;
    color: transparent;
    background: transparent;
}

    input[type="time"]::-webkit-calendar-picker-indicator {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: auto;
    height: auto;
    color: transparent;
    background: transparent;
}
</style>