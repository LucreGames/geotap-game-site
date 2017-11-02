<template lang="pug">
.lucre-store-links

  h3 Play for free on Android and iOS

  a(:href="playStore.url" 
    data-gtm="App Store Links > Click" data-gtm-value="Play Store")
    img(:src="playStore.image")
  
  a(:href="appStore.url"
    data-gtm="App Store Links > Click" data-gtm-value="App Store")
    img(:src="appStore.image")

</template>

<script lang="coffee">
site = require('@/../config/site')

export default {
  name: 'store-links'

  data: -> 
    playStore: 
      image: require '@/assets/images/lucre-games-google-play-icon.png'
      url: site.game.playStoreUrl

    appStore: 
      image: require '@/assets/images/lucre-games-app-store-icon.png'
      url: site.game.appStoreUrl


}
</script>

<style lang="stylus">

.lucre-store-links
  max-width rem(500px)
  margin 0 auto

  img 
    transition all .25s ease 

  a 
    display inline-block
    max-width 42%
    margin 0 3%
    position relative
    transition all .25s ease 

    &:hover
      transform translateY(-3px)
      // img 
      //   filter drop-shadow(0px 5px 10px rgba(#222, 0.2))

    &:active 
      transform translateY(-3px) scale(0.97)
</style>
