<template lang="pug">
.lucre-laurels
  .laurels 
    img(v-for='laurel in laurels' :src="laurel")
</template>

<script lang="coffee">
export default {
  name: 'laurels'

  data: ->
    laurels: [
      require '@/assets/images/laurels/geotap-game-indie-corner-feature.png'
      require '@/assets/images/laurels/geotap-game-indie-prize-finalist.png'
      require '@/assets/images/laurels/geotap-game-play-store-feature.png'
    ]
}
</script>

<style lang="stylus">

.lucre-laurels
  padding rem(80px) rem(40px) rem(40px)
  max-width 1000px 
  margin 0 auto 
  .laurels 
    img 
      @media(min-width (mobile-landscape + 1px))
        width 30%
        &:nth-of-type(3n+2)
          margin 0 5%
      @media(max-width mobile-landscape)
        width 45% 
        margin 0 2.5% 15px 
</style>
