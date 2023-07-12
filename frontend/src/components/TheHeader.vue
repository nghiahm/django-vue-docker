<template>
  <header>
    <TheSidebar :class="`${isExpanded ? 'is-expanded' : ''}`" />
    <button id="sidebar-collapse" type="toggle" class="btn" @click="toggleSidebar">
      <i class="bi bi-list"></i>
    </button>
    <div class="header-menu">
      <button id="header-login" type="login" class="btn">
        Login
      </button>
      <button id="header-settings" type="settings" class="btn">
        <i class="bi bi-gear-fill"></i>
      </button>
    </div>
  </header>
</template>
    
<style lang="scss" scoped>
* {
  font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
  padding: 0;
  margin: 0;

  header {
    width: 100%;
    height: 50px;
    display: flex;
    background-color: #0e0f1f;

    button[type=toggle] {
      margin: 5px;
      width: 40px;
      height: 40px;
      font-size: 30px;
      color: #dfdfdf;
      background-color: transparent;
      border-color: transparent;

    }

    .header-menu {

      button[type=login] {
        // position
        position: absolute;
        right: 70px;
        margin-top: 9px;
        //---------------------
        font-size: 20px;
        width: 70px;
        height: 30px;
        color: #dfdfdf;
        background-color: transparent;
        border-radius: 0px;
        // border-color: #0d2833;
      }

      button[type=login]:hover {
        background-color: #444446;
      }

      button[type=settings] {
        // position
        position: absolute;
        right: 20px;
        margin-top: 5px;
        //---------------------
        font-size: 20px;
        color: #dfdfdf;
        background-color: transparent;
        // border: none;
        border-radius: 50%;
        width: 40px;
        height: 40px;
        border-color: transparent;
      }

      button[type=settings]:active {
        background-color: #444446;
      }
    }

  }
}
</style>
    
<script>
import { ref } from 'vue'
import TheSidebar from './TheSidebar.vue'

export default {
  setup() {
    const isExpanded = ref(false);
    const toggleSidebar = () => {
      isExpanded.value = !isExpanded.value;
    };

    return {
      isExpanded,
      toggleSidebar,
    };
  },
  components: { TheSidebar }
}
</script>