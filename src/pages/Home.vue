<template lang="pug">
.page.home-page

  .gradient-area
  marquee
  game-cards

  laurels

  .gradient-area 
  reviews

  .gradient-area 
  lucre-footer

  .gradient-backgrounds 
    transition(name="fade")
      .gradient.purple(v-show="activeGradient == 0")
    transition(name="fade")
      .gradient.blue(v-show="activeGradient == 1" style="display: none;")
    transition(name="fade")
      .gradient.orange(v-show="activeGradient == 2" style="display: none;")
  
</template>

<script lang="coffee">
metaMixin = require '@/mixins/meta'

import Marquee from '@/components/Marquee'
import GameCards from '@/components/GameCards'
import Reviews from '@/components/Reviews'
import Footer from '@/components/Footer'
import Laurels from '@/components/Laurels'

import { throttle, forEachRight } from 'lodash'
import $ from 'jquery'

$win = $(window)

export default {
  name: 'home-page',

  mixins: [metaMixin]

  components: 
    marquee: Marquee 
    'game-cards': GameCards 
    laurels: Laurels 
    reviews: Reviews 
    'lucre-footer': Footer 

  data: -> 
    activeGradient: 0
    meta: 
      title: 'GeoTap Game for iOS and Android'
      description: 'A subtly addictive stress-relief game'
      image: 'http://geotapgame.com/static/geotap-game-lucre-games-lowpoly-3d-casual-relaxing-mobile-game.png'
      route: '/'

  watch: 
    '$parent.ready': (nv,ov) ->
      @onScroll()

  mounted: -> 
    @gradientAreas = $(@$el).find('.gradient-area')
    $win.on 'scroll', throttle(@onScroll,50)
    @onScroll()
    
  destroyed: -> $win.off 'scroll'

  methods: 
    onScroll:(e) -> 
      pos = ($win.scrollTop() + ($win.outerHeight()*.7))
      for g in @gradientAreas.get().reverse()
        i = @gradientAreas.index(g)
        if pos >= $(g).offset().top
          @activeGradient = i
          return false

      # Defualt to the first gradient as a backup
      @activeGradient = 0
}
</script>

<style lang="stylus" scoped>
.page.home-page
  height 100%

  .gradient
    fill()
    position fixed
    z-index -1

    &.purple 
      background-image linear-gradient(0deg, #FA5B75, #5A3662)

    &.blue 
      background-image linear-gradient(0deg, #2D3EA8, #3BE9F9)

    &.orange 
      background-image linear-gradient(0deg, #FFC371, #FF5D6A)
</style>
