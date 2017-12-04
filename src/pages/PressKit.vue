<template lang="pug">
.page.presskit-page
  
  router-link(to="/" data-gtm="Presskit > Click" data-gtm-value="GeoTap Logo") 
    geotap-logo(heading="h1")
  h2 Press Kit

  text-content 

    strong Description:
    p Geotap is Lucre Games’ first mobile launch and was thought to be simple a exercise in shipping a title with the goal creating a platform to launch games with emotionally rich experiences that ride a fine line between pure art experiences and traditional game play.

    strong Features:
    ul
      li 3 play modes: Classic, Tranquil and Focus
      li Low pressure game play
      li Smoothing soundscape and colors
      li High score leaderboards
      li 10 simple shapes + 30 unlockable shapes
      li Discover unique interactive shapes
      li Or just relax

    //- strong Promotion:
    //- Geotap (black, white logos)
    //- Lucre (black,white, color logos)
    //- Screenshots of game
    //- Photos in device/in location
    //- Trailer (soon…)

    strong Logo Images:
    p 
      img.screen(:src='logos[0]')
      img.screen(:src='logos[1]')

    strong Promotion Screens:
    p 
      img.screen(:src='promo[0]')
      img.screen(:src='promo[1]')
      img.screen(:src='promo[2]')
      img.screen(:src='promo[3]')
      img.screen(:src='promo[4]')

    strong Developer:
    p 
      a(href="http://lucregames.com" target="_blank" 
        data-gtm="Presskit > Click" data-gtm-value="Lucre Games Site") Lucre Games
    p Sacramento, California

    strong Release History:
    p v2.0 - Dec 7, 2017
    p v1.1 - Oct 30, 2017
    p v1.0 - Sep 19, 2017

    strong Platforms:
    p 
      a(href="https://itunes.apple.com/us/app/geotap-game/id1268346417?mt=8" 
        data-gtm="Presskit > Click" data-gtm-value="App Store Listing") iOS on App Store 
    p 
      a(href="https://play.google.com/store/apps/details?id=com.roundhouse.geotap"
         data-gtm="Presskit > Click" data-gtm-value="Play Store Listing") Android on Play Store

    strong Website:
    p 
      router-link(to="/" data-gtm="Presskit > Click" data-gtm-value="GeoTap Website") www.geotapgame.com

    strong Regular Price:
    p Free to play + In App Purchase

    strong Press / Business contact:
    p 
      a(href="mailto:hello@lucregames.com"
         data-gtm="Presskit > Click" data-gtm-value="Lucre Games Email") hello@lucregames.com

    strong Social:
    p 
      span Twitter: 
      a(href="https://twitter.com/LucreGames" target="_blank"
         data-gtm="Presskit > Click" data-gtm-value="Lucre Games Twitter") twitter.com/LucreGames
    p  
      span Facebook: 
      a(href="https://facebook.com/LucreGames" target="_blank"
         data-gtm="Presskit > Click" data-gtm-value="Lucre Games Facebook") facebook.com/LucreGames
    p  
      span Itch.io: 
      a(href="https://thelucre.itch.io" target="_blank"
         data-gtm="Presskit > Click" data-gtm-value="Lucre Games Itch") thelucre.itch.io
    p  
      span Dribble: 
      a(href="https://dribbble.com/LucreGames" target="_blank"
         data-gtm="Presskit > Click" data-gtm-value="Lucre Games Dribbble") dribbble.com/LucreGames
    p 
      span Instagram: 
      a(href="https://instagram.com/LucreGames" target="_blank"
         data-gtm="Presskit > Click" data-gtm-value="Lucre Games Instagram") instagram.com/LucreGames
  
  .gradient-area

</template>

<script lang="coffee">
metaMixin = require '@/mixins/meta'

import GeotapLogo from '@/components/GeotapLogo'

export default {
  name: 'presskit-page',

  mixins: [metaMixin]

  components: 
    'geotap-logo': GeotapLogo

  data: -> 
    meta: 
      title: 'Presskit for GeoTap by Lucre Games'
      description: 'Geotap is Lucre Games’ first mobile launch and was thought to be simple a exercise in shipping a title with the goal creating a platform to launch games with emotionally rich experiences that ride a fine line between pure art experiences and traditional game play.'
      image: 'http://geotapgame.com/static/geotap-game-lucre-games-lowpoly-3d-casual-relaxing-mobile-game-press-kit.png'
      route: '/presskit'

    promo: [
      require '@/assets/images/promo/geotap-game-lucre-games-ios-android-casual-mobile-game-promo-1.png'
      require '@/assets/images/promo/geotap-game-lucre-games-ios-android-casual-mobile-game-promo-2.png'
      require '@/assets/images/promo/geotap-game-lucre-games-ios-android-casual-mobile-game-promo-3.png'
      require '@/assets/images/promo/geotap-game-lucre-games-ios-android-casual-mobile-game-promo-4.png'
      require '@/assets/images/promo/geotap-game-lucre-games-ios-android-casual-mobile-game-promo-5.png'
    ]

    logos: [
      require '@/assets/images/geotap-game-logo-lucre-games-white.png'
      require '@/assets/images/geotap-game-logo-lucre-games-black.png'
    ]
}
</script>

<style lang="stylus">
.page.presskit-page
  height 100%
  padding rem(80px) rem(40px)

  .gradient-area
    fill()
    position fixed
    z-index -1
    background-image linear-gradient(0deg, #FA5B75, #5A3662)

  img.screen 
    max-width 30%
    margin-right 3% 
    margin-bottom 3%
</style>
