<template lang="pug">
.lucre-game-cards
  .image-wrapper 
    img(:src="cards"
      alt="Lucre Games GeoTap game screens, a relaxing casual game with lowpoly design")
</template>

<script lang="coffee">
export default {
  name: 'game-cards'

  data: ->
    cards: require '@/assets/images/lucre-games-geotap-game-casual-relaxing-low=poly-design-game-cards.png'
}
</script>

<style lang="stylus">

.lucre-game-cards
  padding 0
  overflow hidden

  .image-wrapper
    margin 0 -10%

    @media(max-width tablet-landscape)
      padding 0
      margin-left -20%
      margin-right -20%

    @media(max-width tablet)
      margin-left -60%
      margin-right -60%

  img
    width 100%
    max-width initial
    display block

    
</style>
