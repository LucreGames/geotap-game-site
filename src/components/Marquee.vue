<template lang="pug">
.lucre-marquee
  geotap-logo(heading="h1")
  h2 A subtly addictive stress-relief game

  spinning-cube 

  h3 Out now on Android and iOS

  store-links 

  span.icon-keyboard_arrow_down 
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
  height 100%
</style>
