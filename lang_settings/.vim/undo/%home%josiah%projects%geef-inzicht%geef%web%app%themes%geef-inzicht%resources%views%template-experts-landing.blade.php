VimUnDoĺ x&l"¨wAÝeTFWC=&KĄáÂd1˙ä*w     F                    echo do_shortcode('[facetwp template="experts"]');  c                          f§ç   # _Đ       	              *        ˙˙˙˙                                                                                                                                                                                                                                                                                                                                                             f§,    ő            @   {{--      Template Name: Experts Landing   --}}       @extends('layouts.app')       @section('content')   %@while(have_posts()) @php(the_post())   +@include('sections.chatbot-banner-landing')   %<div class="container py-5 xl:py-10">   '  <div class="xl:max-w-7xl xl:mx-auto">   2    <div class="flex flex-col sm:flex-row gap-12">   P      <div class="sm:w-1/2 flex flex-col ">{!! the_field('paragraph1') !!}</div>   P      <div class="sm:w-1/2 flex flex-col ">{!! the_field('paragraph2') !!}</div>   
    </div>     </div>   </div>        <div class="container xl:py-10">   ,  <?php if (isset($_GET['hulpwijzer'])) { ?>   :    <div class="border-b border-gray-200 pb-4 extra-info">   j      <h1 class="text-3xl lg:text-4xl font-bold">Geef Inzicht raadt de volgende experts voor jou aan.</h1>         <p>Kijk rustig door de experts heen. Voel wat voor jou goed voelt. Waar jij een vertrouwd en fijn gevoel bij krijgt. Zowel qua methode als expert.</p>   ÷      <p>Twijfel je tussen expertises? Of weet je niet goed wat iets is? Voel je dan vrij om <a href="/contact">contact met ons op te zoeken</a> of stuur een <a href="https://www.instagram.com/geefinzicht/" target="_blank">DM via Instagram</a></p>   
    </div>     <?php } else { ?>   /    <div class="border-b border-gray-200 pb-4">   I      <h2 class="text-3xl lg:text-4xl font-bold">Aangesloten experts</h2>   
    </div>     <?php } ?>     <div class="lg:flex pt-5">   6    <div class="button-wrapper text-center lg:hidden">   Ř      <span class="filter-button py-1 mb-3 px-16 bg-secondary border-secondary border-2 rounded-md text-white inline-block font-semibold hover:cursor-pointer hover:bg-transparent hover:text-secondary transition-all">           Filters         </span>   
    </div>   -    <div class="filtering lg:w-3/12 lg:pr-8">         <div class="pb-6">   *        <h3 class="-mx-2 -my-3 flow-root">   Ď          <button type="button" class="flex w-full filter-btn items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">   D            <span class="font-medium text-gray-900">Expertise</span>   1            <span class="ml-6 flex items-center">                 <svg class="h-5 w-5 minus hidden" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />                 </svg>                 <svg class="h-5 w-5 plus" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path fill-rule="evenodd" d="M3 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H3.75A.75.75 0 013 10z" clip-rule="evenodd" />                 </svg>               </span>             </button>           </h3>   ?        <div class="pt-6 filters" id="filter-section-mobile-0">             <?php   ;          echo do_shortcode('[facetwp facet="expertise"]');             ?>           </div>         </div>   1      <div class="py-6 border-t border-gray-200">   *        <h3 class="-mx-2 -my-3 flow-root">   Ď          <button type="button" class="flex w-full filter-btn items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">   C            <span class="font-medium text-gray-900">Klachten</span>   1            <span class="ml-6 flex items-center">   W              <svg class="h-5 w-5 minus <?php if (isset($_GET['_klachten=agressie'])) {   8                                          echo 'hidden';                                           } ?>" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />                 </svg>   W              <svg class="h-5 w-5 plus <?php if (!isset($_GET['_klachten=agressie'])) {   8                                          echo 'hidden';                                           } ?>" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path fill-rule="evenodd" d="M3 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H3.75A.75.75 0 013 10z" clip-rule="evenodd" />                 </svg>               </span>             </button>           </h3>   H        <div class="pt-6 filters <?php if (!isset($_GET['_klachten'])) {   2                                    echo 'hidden';   E                                  } ?>" id="filter-section-mobile-0">             <?php   :          echo do_shortcode('[facetwp facet="klachten"]');             ?>           </div>         </div>   1      <div class="py-6 border-t border-gray-200">   *        <h3 class="-mx-2 -my-3 flow-root">   Ď          <button type="button" class="flex w-full filter-btn items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">   R            <span class="font-medium text-gray-900">Wachttijd voor afspraak</span>   1            <span class="ml-6 flex items-center">                 <svg class="h-5 w-5 minus" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />                 </svg>                 <svg class="h-5 w-5 plus hidden" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path fill-rule="evenodd" d="M3 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H3.75A.75.75 0 013 10z" clip-rule="evenodd" />                 </svg>               </span>             </button>           </h3>   F        <div class="pt-6 filters hidden" id="filter-section-mobile-0">             <?php   I          echo do_shortcode('[facetwp facet="wachttijd_voor_afspraak"]');             ?>           </div>         </div>   1      <div class="py-6 border-t border-gray-200">   *        <h3 class="-mx-2 -my-3 flow-root">   Ď          <button type="button" class="flex w-full filter-btn items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">   C            <span class="font-medium text-gray-900">Tarieven</span>   1            <span class="ml-6 flex items-center">                 <svg class="h-5 w-5 minus" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />                 </svg>                 <svg class="h-5 w-5 plus hidden" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path fill-rule="evenodd" d="M3 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H3.75A.75.75 0 013 10z" clip-rule="evenodd" />                 </svg>               </span>             </button>           </h3>   F        <div class="pt-6 filters hidden" id="filter-section-mobile-0">             <?php   :          echo do_shortcode('[facetwp facet="tarieven"]');             ?>           </div>         </div>   1      <div class="py-6 border-t border-gray-200">   *        <h3 class="-mx-2 -my-3 flow-root">   Ď          <button type="button" class="flex w-full filter-btn items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">   P            <span class="font-medium text-gray-900">Offline/online sessie</span>   1            <span class="ml-6 flex items-center">                 <svg class="h-5 w-5 minus" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />                 </svg>                 <svg class="h-5 w-5 plus hidden" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path fill-rule="evenodd" d="M3 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H3.75A.75.75 0 013 10z" clip-rule="evenodd" />                 </svg>               </span>             </button>           </h3>   F        <div class="pt-6 filters hidden" id="filter-section-mobile-0">             <?php   @          echo do_shortcode('[facetwp facet="online_offline"]');             ?>           </div>         </div>   1      <div class="py-6 border-t border-gray-200">   *        <h3 class="-mx-2 -my-3 flow-root">   Ď          <button type="button" class="flex w-full filter-btn items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">   D            <span class="font-medium text-gray-900">Provincie</span>   1            <span class="ml-6 flex items-center">                 <svg class="h-5 w-5 minus" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />                 </svg>                 <svg class="h-5 w-5 plus hidden" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path fill-rule="evenodd" d="M3 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H3.75A.75.75 0 013 10z" clip-rule="evenodd" />                 </svg>               </span>             </button>           </h3>   F        <div class="pt-6 filters hidden" id="filter-section-mobile-0">             <?php   ;          echo do_shortcode('[facetwp facet="provincie"]');             ?>           </div>         </div>   1      <div class="py-6 border-t border-gray-200">   *        <h3 class="-mx-2 -my-3 flow-root">   Ď          <button type="button" class="flex w-full filter-btn items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">   B            <span class="font-medium text-gray-900">Locatie</span>   1            <span class="ml-6 flex items-center">                 <svg class="h-5 w-5 minus" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />                 </svg>                 <svg class="h-5 w-5 plus hidden" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path fill-rule="evenodd" d="M3 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H3.75A.75.75 0 013 10z" clip-rule="evenodd" />                 </svg>               </span>             </button>           </h3>   F        <div class="pt-6 filters hidden" id="filter-section-mobile-0">               <?php   ;            echo do_shortcode('[facetwp facet="locatie"]');               ?>           </div>         </div>   1      <div class="py-6 border-t border-gray-200">   *        <h3 class="-mx-2 -my-3 flow-root">   Ď          <button type="button" class="flex w-full filter-btn items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">   I            <span class="font-medium text-gray-900">Bereikbaarheid</span>   1            <span class="ml-6 flex items-center">                 <svg class="h-5 w-5 minus" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />                 </svg>                 <svg class="h-5 w-5 plus hidden" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path fill-rule="evenodd" d="M3 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H3.75A.75.75 0 013 10z" clip-rule="evenodd" />                 </svg>               </span>             </button>           </h3>   F        <div class="pt-6 filters hidden" id="filter-section-mobile-0">             <?php   @          echo do_shortcode('[facetwp facet="bereikbaarheid"]');             ?>           </div>         </div>   1      <div class="py-6 border-t border-gray-200">   *        <h3 class="-mx-2 -my-3 flow-root">   Ď          <button type="button" class="flex w-full filter-btn items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">   ?            <span class="font-medium text-gray-900">Type</span>   1            <span class="ml-6 flex items-center">                 <svg class="h-5 w-5 minus" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />                 </svg>                 <svg class="h-5 w-5 plus hidden" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path fill-rule="evenodd" d="M3 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H3.75A.75.75 0 013 10z" clip-rule="evenodd" />                 </svg>               </span>             </button>           </h3>   F        <div class="pt-6 filters hidden" id="filter-section-mobile-0">             <?php   6          echo do_shortcode('[facetwp facet="type"]');             ?>           </div>         </div>   1      <div class="py-6 border-t border-gray-200">   *        <h3 class="-mx-2 -my-3 flow-root">   Ď          <button type="button" class="flex w-full filter-btn items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">   N            <span class="font-medium text-gray-900">Dekking verzekering</span>   1            <span class="ml-6 flex items-center">                 <svg class="h-5 w-5 minus" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />                 </svg>                 <svg class="h-5 w-5 plus hidden" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path fill-rule="evenodd" d="M3 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H3.75A.75.75 0 013 10z" clip-rule="evenodd" />                 </svg>               </span>             </button>           </h3>   F        <div class="pt-6 filters hidden" id="filter-section-mobile-0">             <?php   ;          echo do_shortcode('[facetwp facet="verzekerd"]');             ?>           </div>         </div>   1      <div class="py-6 border-t border-gray-200">   *        <h3 class="-mx-2 -my-3 flow-root">   Ď          <button type="button" class="flex w-full filter-btn items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">   J            <span class="font-medium text-gray-900">Antwoord binnen</span>   1            <span class="ml-6 flex items-center">                 <svg class="h-5 w-5 minus" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />                 </svg>                 <svg class="h-5 w-5 plus hidden" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">                   <path fill-rule="evenodd" d="M3 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H3.75A.75.75 0 013 10z" clip-rule="evenodd" />                 </svg>               </span>             </button>           </h3>   F        <div class="pt-6 filters hidden" id="filter-section-mobile-0">             <?php   A          echo do_shortcode('[facetwp facet="antwoord_binnen"]');             ?>           </div>         </div>   
    </div>   3    <div class="filtering__exit hidden w-full p-4">   Ő      <span class="filtering__close py-1 px-8 bg-secondary border-secondary border-2 rounded-md text-white inline-block font-semibold hover:cursor-pointer hover:bg-transparent hover:text-secondary transition-all">           Resultaten bekijken         </span>   
    </div>       <div class="lg:w-9/12">         <?php   8      echo do_shortcode('[facetwp template="experts"]');         ?>   
    </div>   `    <div class="hidden grid gap-4 grid-cols-1 | md:grid-cols-2 | lg:grid-cols-3 lg:gap-8"></div>     </div>   </div>       %<div class="container py-5 xl:py-10">   '  <div class="xl:max-w-7xl xl:mx-auto">   3    <!-- <h2>{!! the_field('heading1') !!}</h2> -->   2    <div class="flex flex-col gap-12 sm:flex-row">   D      <div class="w-3/4 pb-3 ">{!! the_field('paragraph3') !!}</div>   c      <div class="w-full max-w-[355px] min-w-[340px] media">{!! the_field('person_image') !!}</div>   
    </div>     </div>   </div>   %<div class="container py-5 xl:py-10">   1  <!-- <h2>{!! the_field('heading2') !!}</h2> -->   '  <div class="xl:max-w-7xl xl:mx-auto">   &    <div class="flex flex-col gap-12">   G      <div class="flex flex-col ">{!! the_field('paragraph4') !!}</div>   G      <div class="flex flex-col ">{!! the_field('paragraph5') !!}</div>   
    </div>     </div>   0  <section class="recent-experts py-5 xl:py-10">       <div class="container">   +      <div class="xl:flex xl:items-center">           <div class="xl:w-7/12">   L          <h2 class="text-2xl lg:text-3xl font-semibold">Nieuwste blogs</h2>   `          <p>Vind hier de meest recent geposte blogs. Voor inspirerende verhalen van lotgenoten,   >            interessante tips & adviezen en nog veel meer.</p>           </div>   J        <div class="hidden text-right w-full | xl:w-5/12 xl:inline-block">   Í          <a href="/blog" class="py-2.5 px-12 bg-primary border-primary border-2 rounded-md text-white inline-block font-semibold hover:bg-transparent hover:text-primary transition-all">Alle blogs bekijken               <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 inline-block ml-3">   r              <path stroke-linecap="round" stroke-linejoin="round" d="M17.25 8.25L21 12m0 0l-3.75 3.75M21 12H3" />               </svg>             </a>           </div>         </div>   B      <div class="lg:grid lg:grid-cols-2 lg:gap-8 xl:grid-cols-3">   )        @foreach ($recent_posts as $post)   @        @include('components.blog-card', array('post' => $post))           @endforeach         </div>   
    </div>     </section>     @endwhile     @endsection5ő            ?                  ĎH      Ői      5_Đ      
          	  c   A    ˙˙˙˙                                                                                                                                                                                                                                                                                                                           c   :      c   @       v   @    f§Ű    ő  b  d        F                    echo do_shortcode('[facetwp template="experts"]');5ő    b  @                  ^                     5_Đ   	              
  c   @    ˙˙˙˙                                                                                                                                                                                                                                                                                                                           c   :      c   @       v   @    f§Ü    ő  b  d        E                    echo do_shortcode('[facetwp template="expert"]');5ő    b  @                  ^                     5_Đ   
                c   E    ˙˙˙˙                                                                                                                                                                                                                                                                                                                           c   :      c   @       v   @    f§á    ő  b  d        J                    echo do_shortcode('[facetwp template="expert-card"]');5ő    b  @                  ^                     5_Đ                    c   A    ˙˙˙˙                                                                                                                                                                                                                                                                                                                           c   :      c   @       v   @    f§ć   # ő  b  d        E                    echo do_shortcode('[facetwp template="expert"]');5ő    b  /                  ^                     5_Đ             	     c   :    ˙˙˙˙                                                                                                                                                                                                                                                                                                                           c   :      c   E       v   @    f§Ę    ő  c  d      ő  b  d        K                    echo do_shortcode('[facetwp template="expert-card""]');5ő    b  :                 ^                    5_Đ                  c   @    ˙˙˙˙                                                                                                                                                                                                                                                                                                                           c   :      c   @       v   @    f§J    ő  b  d        E                    echo do_shortcode('[facetwp template="expert"]');5ő    b  @                  ^                     5_Đ                  c   A    ˙˙˙˙                                                                                                                                                                                                                                                                                                                           j   
      q          v       f§.    ő  b  d        J                    echo do_shortcode('[facetwp template="expert-card"]');5ő    b  @                 ^                    5_Đ                  c   :    ˙˙˙˙                                                                                                                                                                                                                                                                                                                           j   
      q          v       f§     ő  b  d        ?                    echo do_shortcode('[facetwp template=""]');5ő    b  :                  ^                     5_Đ                  c       ˙˙˙˙                                                                                                                                                                                                                                                                                                                           [         d          v   8    f§đ    ő  b  d        H                   // echo do_shortcode('[facetwp template="experts"]');5ő    b                    i^                     5_Đ                   B       ˙˙˙˙                                                                                                                                                                                                                                                                                                                                                v   -    f§˘    ő   A   C        O                           // echo do_shortcode('[facetwp facet="expertise"]');5ő    A                                          5_Đ                       (    ˙˙˙˙                                                                                                                                                                                                                                                                                                                            M   $       N   6       v   ?    f§E    ő              /        <div class="container xl:py-10">sasdasd5ő       (                                       5çŞ