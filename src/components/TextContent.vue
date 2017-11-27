<template lang="pug">
.lucre-text-content
  
  .wysiwyg
    slot

</template>

<script lang="coffee">
export default {
  name: 'text-content',

  props: ['content']
}
</script>

<style lang="stylus">
.lucre-text-content   
  text-align left 
  max-width rem(800px)
  margin rem(80px) auto

  * 
    color white 

  strong 
    text-transform uppercase 
    font-size rem(14px) 
    margin-top rem(40px)
    display block 
    letter-spacing rem(2px)

  p, li 
    line-height 1.4

  p  
    margin rem(10px) 0 0
    padding 0
    display block 

  a 
    display inline-block 
    border-bottom 1px solid rgba(white, 0.7)
    transition opacity 0.25s ease
    padding-bottom 0px
    line-height 1
    &:hover, &:active 
      transform none 
      opacity 0.7

  ul, ol  
    margin-left 0
    padding-left 0
</style>

