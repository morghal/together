<script setup>
    import cardProfile from '../Components/ProfileCard.vue'
    import FooterNav from '../Components/FooterNav.vue';
</script>
<template>
    <div class="bg-gradient-to-b from-moonstone to-[#539ABB] container">
        <header class="mb-12">
            <!--NAV-->
            <nav class="mb-12 items-center relative w-full px-4 py-4 bg-jellybeanblue flex text-slate-50">
          <ul>
            <li>
                <svg fill="none" class="opacity-100 h-6 w-6 " stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5L3 12m0 0l7.5-7.5M3 12h18"></path>
                </svg>
            </li>

            <li>
                <button class="absolute right-4 top-3 p-2 rounded-full bg-slate-50 text-center text-slate-800 ">
                    <svg fill="none" class="w-4 h-4" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
                </button>
            </li>
          </ul> 
        </nav>   
        </header>
        <main class="px-6">
            <section>
            <!--INFOS-->
            <img class="rounded-full shadow-md shadow-slate-700/50 h-24 mb-2 w-24" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt="organisateur_name">
            <h1 class="text-2xl text-slate-50 font-semibold">ArnaudRigo</h1>
            <div class="text-slate-50 text-sm">57 ans</div>
            <div class="text-slate-50 text-sm mb-3">Ayerneux, Làbas</div>
            <div class="flex mb-12"> <!--5 étoiles-->
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

            <!--DESCRIPTION-->
            <h1 class="text-lg font-semibold text-slate-50 mb-4">Aimable et charismatique, je suis avant tout un grand sportif</h1>
            <p class="text-slate-50 text-sm mb-12">J'aime le vtt, les randonnées, l'escalade, boire un verre après une journée bien remplie. Mes activités sont toujours empruntes de bonne humeur et d'une bonne dose d'humour</p>
            </section>
    <div class="my-8">
      <h2 class="text-lg text-slate-50 font-semibold mb-4"> <svg fill="none" stroke="currentColor" class="inline h-6 w-6 mr-3" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M9.568 3H5.25A2.25 2.25 0 003 5.25v4.318c0 .597.237 1.17.659 1.591l9.581 9.581c.699.699 1.78.872 2.607.33a18.095 18.095 0 005.223-5.223c.542-.827.369-1.908-.33-2.607L11.16 3.66A2.25 2.25 0 009.568 3z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6 6h.008v.008H6V6z"></path>
                    </svg>Catégories</h2>
                    <div class="flex flex-wrap mb-12">
                        <div class="bg-jellybeanblue mr-2 mb-2 text-slate-50 px-3 py-2 text-center rounded-lg ">Randonnée</div>
                        <div class="bg-jellybeanblue mr-2 mb-2 text-slate-50 px-3 py-2 text-center rounded-lg ">VTT</div>
                        <div class="bg-jellybeanblue mr-2 mb-2 text-slate-50 px-3 py-2 text-center rounded-lg ">Resto</div>
                        <div class="bg-jellybeanblue mr-2 mb-2 text-slate-50 px-3 py-2 text-center rounded-lg ">Rencontre</div>
                    </div>
    </div>

    <div class="my-8">
        <h2 class="text-lg text-slate-50 font-semibold mb-4">
            <svg fill="none" stroke="currentColor" stroke-width="2" class="inline h-6 w-6 mr-3" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
            <path stroke-linecap="round" stroke-linejoin="round" d="M6 6.878V6a2.25 2.25 0 012.25-2.25h7.5A2.25 2.25 0 0118 6v.878m-12 0c.235-.083.487-.128.75-.128h10.5c.263 0 .515.045.75.128m-12 0A2.25 2.25 0 004.5 9v.878m13.5-3A2.25 2.25 0 0119.5 9v.878m0 0a2.246 2.246 0 00-.75-.128H5.25c-.263 0-.515.045-.75.128m15 0A2.25 2.25 0 0121 12v6a2.25 2.25 0 01-2.25 2.25H5.25A2.25 2.25 0 013 18v-6c0-.98.626-1.813 1.5-2.122"></path>
            </svg>Activities
        </h2>
        <div class="flex flex-wrap">
            <cardProfile></cardProfile>
            <cardProfile></cardProfile>
            <cardProfile></cardProfile>
        </div>
    </div>
</main>
<footer>
<FooterNav></FooterNav>
</footer>
</div>
</template>
<style>
    .icone {
  stroke: #f8fafc;
  stroke-width: 2px;
  stroke-linejoin: round;
}
    .icone2 {
        stroke: #f8fafc;
        stroke-width: 1px;
    }
</style>