<template lang="pug">
.lucre-game-cards
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
  padding 0 rem(50px)
</style>
