<template>
  <div id="app">
    <ReplaceNickname/>
  </div>
</template>

<script>
import ReplaceNickname from './components/ReplaceNickname.vue'

export default {
  name: 'app',
  components: {
    ReplaceNickname
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
