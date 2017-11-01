<template lang="pug">
.lucre-footer
  geotap-logo(heading="h4")
  store-links

  lucre-logo 
  social-links(:links="socialLinks")

</template>

<script lang="coffee">
site = require '@/../config/site'

import GeotapLogo from '@/components/GeotapLogo'
import StoreLinks from '@/components/StoreLinks'

export default {
  name: 'lucre-footer',

  components: 
    'geotap-logo': GeotapLogo 
    'store-links': StoreLinks
    
  data: -> 
    socialLinks: site.social.links
}
</script>

<style lang="stylus">

.lucre-footer
  padding rem(60px)
</style>
