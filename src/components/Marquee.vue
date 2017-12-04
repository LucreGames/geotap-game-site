<template lang="pug">
.lucre-marquee

  .v-center-content 
    transition(name='latefade')
      geotap-logo(heading="h1" v-show='ready')

    transition(name='latefade')
      h2(v-show='ready') A subtly addictive stress-relief game

    spinning-cube

    transition(name='laterfade')
      store-links(v-show='ready')

    transition(name='laterfade')
      span.icon-keyboard_arrow_down(@click='onDownArrowClick' v-show='ready')
      
</template>

<script lang="coffee">
$ = require 'jquery'

import SpinningCube from '@/components/SpinningCube'
import StoreLinks from '@/components/StoreLinks'
import GeotapLogo from '@/components/GeotapLogo'

export default {
  name: 'marquee'
  
  data: -> ready: false 

  components: 
    'spinning-cube': SpinningCube
    'store-links': StoreLinks
    'geotap-logo': GeotapLogo

  beforeMount: ->
    setTimeout @buildin, 200

  methods: 
    # Scroll down to the next main section
    onDownArrowClick: ->
      $('html, body').animate({ scrollTop: $(".lucre-game-cards").offset().top - 50, easing: 'swing' }, 1000); 

    buildin: ->
      @ready = true
      console.log 'build in', @ready
}
</script>

<style lang="stylus">

.lucre-marquee
  height 95%
  margin 0 auto
  position relative

  .v-center-content 
    width 90%

  .lucre-geotap-logo,
  h2,
  .lucre-store-links 
    z-index 2
    position relative

  .icon-keyboard_arrow_down
    font-size rem(60px)
    width 100px 
    margin rem(50px) auto 0
    display block
    transition transform .25s ease
    cursor pointer

    &:hover 
      transform scale(1.2)
</style>
