<template lang="pug">
.page.home-page
  marquee
  game-cards

  reviews

  lucre-footer

  .gradient-backgrounds 
  
</template>

<script lang="coffee">
metaMixin = require '@/mixins/meta'

import Marquee from '@/components/Marquee'
import GameCards from '@/components/GameCards'
import Reviews from '@/components/Reviews'
import Footer from '@/components/Footer'

export default {
  name: 'home-page',

  mixins: [metaMixin]

  components: 
    marquee: Marquee 
    'game-cards': GameCards 
    reviews: Reviews 
    'lucre-footer': Footer 

  data: -> 
    meta: 
      title: 'title test'
      description: 'description test'
      image: 'image test'
}
</script>

<style lang="stylus" scoped>
.page.home-page
  height 100%

  .gradient-backgrounds 
    fill()
    position fixed
    z-index -1
    background-image linear-gradient(0deg, #FA5B75, #5A3662)
</style>
