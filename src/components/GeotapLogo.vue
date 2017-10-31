<template lang="pug">
.lucre-geotap-logo
  h1(v-if="heading == 'h1'") GEOTAP  
  h4(v-if="heading == 'h4'") GEOTAP  
</template>

<script lang="coffee">
export default {
  name: 'geotap-logo'

  props: ['heading']
}
</script>

<style lang="stylus">

.lucre-geotap-logo
  //
</style>
