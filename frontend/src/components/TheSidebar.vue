<template>
  <aside class="sidebar">
    <div class="sidebar-header">
      Sidebar
    </div>
    <div class="sidebar-body">
      <nav class="sidebar-menu">
        <a class="menu-item" href="/">
          <span>Home</span>
        </a>
        <a class="menu-item" href="/">
          <span>Contact</span>
        </a>
      </nav>
    </div>
  </aside>
</template>
      
<style lang="scss" scoped>
* {
  font-family: 'Courier New', Courier, monospace;
  padding: 0;
  margin: 0;
}

.sidebar {
  &.is-expanded {
    width: 250px;
  }
  // display: flex;
  flex-direction: column;
  overflow: hidden;
  position: relative;
  width: 0px;
  height: 100vh;
  background-color: #10293a;
  transition: 0.25s ease-out;

  .sidebar-header {
    padding: 10px;
    // justify-content: center;
    color: aliceblue;
    font-size: 30px;
  }

  .sidebar-body {
    margin-top: 30px;

    .menu-item {
      :hover {
        background-color: #0f1d27;
      }

      color: aliceblue;
      display: flex;
      text-decoration: none;
      font-size: 15px;

      span {
        padding: 10px;
        width: 100%;
      }
    }
  }
}
</style>
      
<script>
export default {
  setup() {

  }
}
</script>