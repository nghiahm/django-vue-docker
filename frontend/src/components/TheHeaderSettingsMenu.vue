<template>
  <div class="settings-menu">
    <div class="list-menu">
      <a class="menu-item" href="#">Option 1
        <i class="bi bi-volume-up-fill"></i>
      </a>
      <a class="menu-item" href="#">Option 2
        <i class="bi bi-bell-fill"></i>
      </a>
      <a class="menu-item" href="#">Option 3
        <i class="bi bi-brightness-high-fill"></i>
      </a>
    </div>
  </div>
</template>
  
<style lang="scss" scoped>
* {
  font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
  padding: 0;
  margin: 0;

  .settings-menu {
    background-color: #09122b;
    display: inline-block;

    .list-menu {
      list-style: none;
      color: azure;
      font-size: 20px;
      width: 100%;

      .menu-item {
        padding: 5px;
        text-decoration: none;
        color: inherit;
        display: block;
      }

      .menu-item:hover {
        background-color: #585757;
        width: 100%;
      }

      i {
        margin-left: 15px;
        margin-right: 10px;
      }
    }
  }
}
</style>
  
<script>

</script>
  