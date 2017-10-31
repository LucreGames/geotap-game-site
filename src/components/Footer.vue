<template lang="pug">
.lucre-footer
  geotap-logo(heading="h4")
  social-links(:links="socialLinks")
  lucre-logo 
</template>

<script lang="coffee">
site = require '@/../config/site'

import GeotapLogo from '@/components/GeotapLogo'

export default {
  name: 'lucre-footer',

  components: 
    'geotap-logo': GeotapLogo 
    
  data: -> 
    socialLinks: site.social.links
}
</script>

<style lang="stylus">

.lucre-footer
  padding rem(60px)
</style>
