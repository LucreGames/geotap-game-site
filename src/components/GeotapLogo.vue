<template lang="pug">
.lucre-geotap-logo
  h1.heading(v-if="heading == 'h1'") GEOTAP  
  h4.heading(v-if="heading == 'h4'") GEOTAP  
</template>

<script lang="coffee">
export default {
  name: 'geotap-logo'

  props: ['heading']
}
</script>

<style lang="stylus">

.lucre-geotap-logo
  .heading 
    margin 0 
    font-size 80px 
    letter-spacing rem(5px)
</style>
