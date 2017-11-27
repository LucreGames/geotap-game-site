<template lang="pug">
.lucre-footer
  geotap-logo(heading="h4")
  store-links

  nav.footer 
    router-link(to="presskit") Press kit 
  
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

  nav 
    padding-top rem(40px)

    a  
      font-size rem(26px)
      text-transform uppercase 
      letter-spacing rem(2px)
      transition opacity 0.25s ease 

      &:hover, &:active 
        opacity 0.7

</style>
