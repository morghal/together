<script setup>
import { Link } from '@inertiajs/vue3'
import { useActivityStore } from '@/stores/activityStore';
import { onMounted } from 'vue';

const store = useActivityStore();

const props = defineProps({
  activity:Object,
  img:String
});

const shorten = (string, limit) => {
  if(string.length > limit) {
    const truncated = string.substring(0,20);
    const lastIndex = truncated.lastIndexOf(" ");
    const clean = truncated.substring(0, lastIndex);
    return clean + "...";
  }
  else {
    return string;
  }
}

</script>
<template>
                  <!--CARD-->
              
                  <div class="relative shadow-lg shadow-slate-700/50 min-w-[225px] h-[500px] ml-6 mr-3 rounded-xl bg-[#4B8798] flex flex-col" width="225">
                    <!--CADRE IMAGE-->
                    <div class="relative">
                      <!--CATEGORIE-->
                      <div class="text-xs py-1 px-2 absolute left-4 top-4 rounded-lg text-center font-bold bg-slate-50 text-jellybeanblue">{{ activity.category.name }}</div>
                      <!--BOUTON FAVORIS-->
                      <button v-if="activity.bookmarked" href="" @click.prevent="store.deleteBookmark(activity)" class="rounded-full bg-jellybeanblue text-center absolute p-2 right-4 top-4 text-slate-800 "> 
                          <svg fill="none" class="w-4 h-4 text-gargoylegas" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z"></path>
                          </svg>
                      </button>
                      <button v-else="" @click.prevent="store.addToBookmarks(activity)" href="" class="rounded-full bg-slate-50 text-center absolute p-2 right-4 top-4 text-slate-800 "> 
                        <svg fill="none" class="w-4 h-4" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z"></path>
                        </svg>
                      </button>
                      <div class="py-1 px-2 font-bold absolute rounded-lg text-center bg-slate-50 text-jellybeanblue bottom-4 text-xs right-4">{{ store.dateTime(activity) }}</div>
                      <img class="w-full rounded-t-xl object-cover" style="height: 230px !important;" :src="img" alt="Cover Photo">
                    </div>

                    <!--TEXTE ET BOUTON-->
                    <div class="px-5 mt-5">
                      <h3 class="font-bold text-md mb-2 text-slate-50">{{shorten(activity.title,20) }}</h3>
                      <div class="text-caribbeangreen mb-2 flex items-center space-x-1">
                        <svg fill="currentColor" class="icone min-h-[24px] min-w-[24px] h-6 w-6 inline text-caribbeangreen" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path clip-rule="evenodd" fill-rule="evenodd" d="M11.54 22.351l.07.04.028.016a.76.76 0 00.723 0l.028-.015.071-.041a16.975 16.975 0 001.144-.742 19.58 19.58 0 002.683-2.282c1.944-1.99 3.963-4.98 3.963-8.827a8.25 8.25 0 00-16.5 0c0 3.846 2.02 6.837 3.963 8.827a19.58 19.58 0 002.682 2.282 16.975 16.975 0 001.145.742zM12 13.5a3 3 0 100-6 3 3 0 000 6z"></path>
                        </svg>
                        <p class="text-base inline"> {{ `${activity.city}, ${activity.distance}km` }}</p>
                      </div>
                
                      <p class="text-slate-50 text-base mb-2">
                        <svg fill="currentColor" class="text-slate-50 inline  h-6 w-6" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true"><path clip-rule="evenodd" fill-rule="evenodd" d="M7.5 6a4.5 4.5 0 119 0 4.5 4.5 0 01-9 0zM3.751 20.105a8.25 8.25 0 0116.498 0 .75.75 0 01-.437.695A18.683 18.683 0 0112 22.5c-2.786 0-5.433-.608-7.812-1.7a.75.75 0 01-.437-.695z"></path>
                        </svg> <span class="pr-2">{{ shorten(activity.user.pseudo,17) }}</span>

                        <!--5 étoiles-->
                        <div><svg fill="currentColor" v-for="(star, index) in 5" :key="index" :class="index < activity.user.rating ? 'text-gargoylegas' : 'text-slate-50'" class="inline align-text-top h-4 w-4" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path clip-rule="evenodd" fill-rule="evenodd" d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z"></path>
                        </svg>
                        </div>
                        
                      </p>

                      <p class="text-slate-50 text-base">
                          <svg fill="currentColor" class="icone h-6 w-6 inline" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                              <path d="M4.5 6.375a4.125 4.125 0 118.25 0 4.125 4.125 0 01-8.25 0zM14.25 8.625a3.375 3.375 0 116.75 0 3.375 3.375 0 01-6.75 0zM1.5 19.125a7.125 7.125 0 0114.25 0v.003l-.001.119a.75.75 0 01-.363.63 13.067 13.067 0 01-6.761 1.873c-2.472 0-4.786-.684-6.76-1.873a.75.75 0 01-.364-.63l-.001-.122zM17.25 19.128l-.001.144a2.25 2.25 0 01-.233.96 10.088 10.088 0 005.06-1.01.75.75 0 00.42-.643 4.875 4.875 0 00-6.957-4.611 8.586 8.586 0 011.71 5.157v.003z"></path>
                          </svg> <span class="">{{activity.nbr_participants + "/" + activity.max_participants + " participants" }}</span>
                            
                      </p>
                      
                    </div>
                    <div class="w-28 mx-auto my-auto">
                            <Link class="" :href="`/infos/${activity.id}`" method="get" :class="`bg-caribbeangreen w-full text-slate-50 font-medium rounded-xl py-1 px-6 mx-auto`" as="button">
                        Infos
                            </Link>
                      </div>
                  </div>
</template>
<style>
.icone {
  stroke: #f8fafc;
  stroke-width: 2px;
  stroke-linejoin: round;
}
</style>