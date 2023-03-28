<script setup>
    import FooterNav from '../Components/FooterNav.vue';
</script>
<template>
    <div class="container bg-slate-50">
        <header class="">
        <!--NAVIGATION-->
        <nav class="mb-12 items-center relative w-full px-4 py-4 bg-crystal flex text-slate-50">
          <ul>
            <li>
                <svg fill="none" class="opacity-100 h-6 w-6 " stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5L3 12m0 0l7.5-7.5M3 12h18"></path>
                </svg>
            </li>

            <li>
                <button class="rotate-45 absolute right-4 top-3 p-2 rounded-full bg-slate-50 text-center text-slate-800 ">
                    <svg fill="none" stroke="currentColor" class="w-4 h-4" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15"></path>
                    </svg>
                </button>
            </li>
          </ul> 
        </nav>   
    </header>
    <main class="px-6">
        <form action="/filter" method="GET" enctype="multipart/form-data">
            <div class="mb-12 relative">
                <label for="distance" class="text-slate-600 font-extrabold text-sm flex align-top">
                    <svg fill="none" stroke="currentColor" class="h-5 w-5 inline mr-2" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z"></path>
                    </svg>Distance
                    <div class="text-slate-500 font-semibold absolute right-0 top-0">71 km</div>
                </label>
                <div>
                    <input type="range" class="block w-full bg-caribbeangreen distance mt-2" name="distance" id="distance" min="5" max="200" value="71">
                </div>
            </div>
            <hr class="border-slate-200/50 border-1 mb-8">

            <!--TRI-->
            <div class="flex mr-10 mb-8">
                <div class="">
                    <div class="flex flex-col mr-4">
                        <input type="checkbox" checked name="distanceCroissante" id="distanceCroissante" class="hidden peer">
                        <div class="font-extrabold mb-2 text-slate-600">
                            <svg fill="none" class="h-4 w-4 inline mr-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M3 7.5L7.5 3m0 0L12 7.5M7.5 3v13.5m13.5 0L16.5 21m0 0L12 16.5m4.5 4.5V7.5"></path>
                            </svg>
                            Tri par distance
                        </div>
                        <label for="distanceCroissante" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue flex flex-col">
                        Distance croissante
                    </label>
                    </div>
                    
                </div>

                <div class="">
                    <div class="flex flex-col">
                        <input type="checkbox" checked name="dateCroissante" id="dateCroissante" class="hidden peer">
                        <div class="font-extrabold mb-2 text-slate-600">
                            <svg fill="none" class="h-4 w-4 inline mr-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M3 7.5L7.5 3m0 0L12 7.5M7.5 3v13.5m13.5 0L16.5 21m0 0L12 16.5m4.5 4.5V7.5"></path>
                            </svg>
                            Tri par distance
                        </div>
                        <label for="dateCroissante" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue flex flex-col">
                        Date croissante
                    </label>
                    </div>
                </div>
            </div>
            <hr class="border-slate-200/50 border-1 mb-8">
             <!--CATEGORIES-->
             <fieldset class="flex flex-wrap mb-6">
                <legend class="text-slate-900 font-bold mb-4 text-sm">
                    <svg fill="none" stroke="currentColor" class="inline h-6 w-6 mr-3" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M9.568 3H5.25A2.25 2.25 0 003 5.25v4.318c0 .597.237 1.17.659 1.591l9.581 9.581c.699.699 1.78.872 2.607.33a18.095 18.095 0 005.223-5.223c.542-.827.369-1.908-.33-2.607L11.16 3.66A2.25 2.25 0 009.568 3z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6 6h.008v.008H6V6z"></path>
                    </svg>Categories
                </legend>
                <div class="mb-5">
                    <input type="checkbox" name="autres" id="autres" checked class="hidden peer">
                    <label for="autres" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Autre
                    </label>
                </div>
                
                <div class="mb-5">
                    <input type="checkbox" name="randonnee" id="randonnee" class="hidden peer">
                    <label for="randonnee" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Randonnée
                    </label>
                </div>

                <div class="mb-5">
                    <input type="checkbox" name="velo" id="velo" class="hidden peer">
                    <label for="velo" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Vélo
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="moto" id="moto" class="hidden peer">
                    <label for="moto" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Moto
                    </label>
                </div> 

                <div class="mb-5">
                    <input type="checkbox" name="peche" id="peche" class="hidden peer">
                    <label for="peche" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Pêche
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="kayak" id="kayak" class="hidden peer">
                    <label for="kayak" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Kayak
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="escalade" id="escalade" class="hidden peer">
                    <label for="escalade" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Escalade
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="resto" id="resto" class="hidden peer">
                    <label for="resto" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Resto
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="bar" id="bar" class="hidden peer">
                    <label for="bar" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Bar
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="rencontre" id="rencontre" class="hidden peer">
                    <label for="rencontre" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Rencontre
                    </label>
                </div>  
            </fieldset>
            <hr class="border-slate-200/50 border-1 mb-8">
        </form>
        <div class="text-sm font-semibold text-slate-500 mb-12" >
                    <svg fill="currentColor" class="w-4 h-4 inline mr-2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M12 15a3 3 0 100-6 3 3 0 000 6z"></path>
                    <path clip-rule="evenodd" fill-rule="evenodd" d="M1.323 11.447C2.811 6.976 7.028 3.75 12.001 3.75c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113-1.487 4.471-5.705 7.697-10.677 7.697-4.97 0-9.186-3.223-10.675-7.69a1.762 1.762 0 010-1.113zM17.25 12a5.25 5.25 0 11-10.5 0 5.25 5.25 0 0110.5 0z"></path>
                    </svg>
            voir les activités
        </div>
    </main>
    <footer>
        <FooterNav></FooterNav>
    </footer>
    </div>
</template>
<style>
 input[type='range'] {
    -webkit-appearance: none !important;
    background: linear-gradient(to right, #02CB8C 0%, #02CB8C 36%, rgb(100 116 139) 36%, rgb(100 116 139) 100%);
    background-color: #ddd;
    height:7px;
    border-radius: 5px;

}
input[type='range']::-webkit-slider-thumb {
    -webkit-appearance: none !important;
    background:#4B8798;
    height:20px;
    width:20px;
    border-radius: 15px;
    
}
</style>