<script setup>
  import navbar from '../Components/FooterNav.vue'
</script>
<template>
    <article class="bg-gradient-to-b from-moonstone to-[#539ABB]">
    <header class="relative">
        <nav class="items-center absolute w-full px-4 py-4 bg-neutral-900/50 flex text-slate-50">
          <ul>
            <li>
                <svg fill="none" class="opacity-100 h-6 w-6 " stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5L3 12m0 0l7.5-7.5M3 12h18"></path>
                </svg>
            </li>

            <li>
                <button class="absolute right-14 top-3 mr-1 rounded-full p-2 bg-slate-50 text-center text-slate-800 ">
                      <svg fill="none" class="w-4 h-4" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z"></path>
                      </svg>
                </button>
            </li>

            <li>
                <button class=" absolute right-4 top-3 p-2 rounded-full bg-slate-50 text-center text-slate-800 ">
                  <svg fill="none" class="w-4 h-4" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
                </button>
            </li>
          </ul> 
        </nav>
        
        <img class="h-max" height="400" src="https://cdn.pixabay.com/photo/2020/07/12/07/47/bee-5396362_1280.jpg" alt="Cover Photo">
        <div class="absolute bottom-0 w-full px-4 py-4 bg-neutral-900/50 text-slate-50">
            <h1 class="text-lg text-slate-50 font-bold mb-1">Randonnée charmante au bord d...</h1>
            <div class="bg-slate-50 text-sm px-2 py-1 font-medium text-caribbeangreen rounded-md w-fit flex items-center">
                <svg fill="currentColor" class="h-4 w-4 mr-1" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                <path clip-rule="evenodd" fill-rule="evenodd" d="M11.54 22.351l.07.04.028.016a.76.76 0 00.723 0l.028-.015.071-.041a16.975 16.975 0 001.144-.742 19.58 19.58 0 002.683-2.282c1.944-1.99 3.963-4.98 3.963-8.827a8.25 8.25 0 00-16.5 0c0 3.846 2.02 6.837 3.963 8.827a19.58 19.58 0 002.682 2.282 16.975 16.975 0 001.145.742zM12 13.5a3 3 0 100-6 3 3 0 000 6z"></path>
                </svg>Liège, à 10km
            </div>
        </div>
    </header>
    <main class="">
        <div class="flex justify-between bg-jellybeanblue px-6 py-4">
            <div class="text-base font-semibold text-slate-50">11 novembre</div>
            <div class="text-jellybeanblue font-semibold text-xs bg-slate-50 rounded-lg py-1 px-2">Randonnée</div>
        </div>
        <section class="px-6">
            <article>
                <div class="py-10">
                    <h1 class="text-lg text-slate-50 font-bold mb-4">Randonnée charmante au bord d'un lac et près d'une forêt</h1>
                    <div class="text-xs text-slate-50 font-normal mb-4">11 Novembre, à 12h12</div>
                    <p class="text-sm text-slate-50 font-medium">Cette randonnée vous fera perdre la tête ! De cours d'eau enchanteurs aux sommets ravissants, vous serez revigorés par cette balade d'un charme authentique.</p>
                </div>
                <div class="flex mb-4 items-center text-caribbeangreen">
                    <svg fill="currentColor" class="icone h-8 w-8 mr-4 inline text-caribbeangreen" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path clip-rule="evenodd" fill-rule="evenodd" d="M11.54 22.351l.07.04.028.016a.76.76 0 00.723 0l.028-.015.071-.041a16.975 16.975 0 001.144-.742 19.58 19.58 0 002.683-2.282c1.944-1.99 3.963-4.98 3.963-8.827a8.25 8.25 0 00-16.5 0c0 3.846 2.02 6.837 3.963 8.827a19.58 19.58 0 002.682 2.282 16.975 16.975 0 001.145.742zM12 13.5a3 3 0 100-6 3 3 0 000 6z"></path>
                        </svg>
                    <address class="text-slate-50 not-italic text-xs font-medium">Avenue de la libération, 17 <br/>8731 Beau Village</address>
                </div>
                <div class="bg-slate-50 mb-10 rounded-xl text-lg font-medium flex items-center justify-center text-center w-full h-40"><div>MAP HERE</div></div>
            </article>
            <div class="flex flex-col content-center">
                <div class="text-slate-50 text-xs font-medium">Organisé par</div>
                <img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt="">
            </div>
            <div class="text-slate-50 font-semibold text-xs">Jean-Denis Charles Jacques</div>
            <div class="flex mb-10"> <!--5 étoiles-->
                        <svg fill="currentColor" class="text-gargoylegas inline align-text-top h-4 w-4" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path clip-rule="evenodd" fill-rule="evenodd" d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z"></path>
                        </svg>
                        <svg fill="currentColor" class="text-gargoylegas align-text-top inline  h-4 w-4" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path clip-rule="evenodd" fill-rule="evenodd" d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z"></path>
                        </svg>
                        <svg fill="currentColor" class="text-gargoylegas align-text-top inline  h-4 w-4" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path clip-rule="evenodd" fill-rule="evenodd" d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z"></path>
                        </svg>
                        <svg fill="currentColor" class="text-gargoylegas align-text-top inline  h-4 w-4" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path clip-rule="evenodd" fill-rule="evenodd" d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z"></path>
                        </svg>
                        <svg fill="currentColor" class="text-slate-50 align-text-top inline  h-4 w-4" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path clip-rule="evenodd" fill-rule="evenodd" d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z"></path>
                        </svg>
                    </div>
                    <div class="text-slate-50 text-xs font-medium mb-2"> 35/50 participants</div>
                    <div class="flex flex-wrap mb-6">
                        <img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt=""><img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt=""><img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt=""><img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt=""><img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt=""><img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt=""><img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt=""><img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt=""><img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt=""><img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt=""><img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt=""><img class="rounded-full shadow-md shadow-slate-700/50 m-2 h-12 w-12" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt="">
                    </div>
                    <button class="bg-caribbeangreen w-1/3 rounded-full py-1 text-xs mb-6 font-medium text-slate-50">S'inscrire</button>
        </section>
    </main>
    <footer>
      <navbar></navbar>
    </footer>
</article>
</template>
<style>
.icone {
  stroke: #f8fafc;
  stroke-width: 2px;
  stroke-linejoin: round;
}</style>