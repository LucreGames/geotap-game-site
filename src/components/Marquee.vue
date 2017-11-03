<template lang="pug">
.lucre-marquee

  .v-center-content 
    geotap-logo(heading="h1")
    h2 A subtly addictive stress-relief game

    spinning-cube 

    store-links 

    //- span.icon-keyboard_arrow_down 
</template>

<script lang="coffee">
import SpinningCube from '@/components/SpinningCube'
import StoreLinks from '@/components/StoreLinks'
import GeotapLogo from '@/components/GeotapLogo'

export default {
  name: 'marquee'

  components: 
    'spinning-cube': SpinningCube
    'store-links': StoreLinks
    'geotap-logo': GeotapLogo
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
</style>
