<template>
  <div class="footer">
    <div class="content">
      <div class="contact">
        <div class="contact-header">
          <h2>Some Name</h2>
        </div>
        <div class="contact-body">
          Follow our latest achievements and information on social networks
        </div>
        <div class="contact-footer">

          <a href=""><i class="bi bi-facebook"></i></a>
          <a href=""><i class="bi bi-instagram"></i></a>
          <a href=""><i class="bi bi-youtube"></i></a>
          <a href=""><i class="bi bi-twitter"></i></a>

        </div>
      </div>
      <div class="link">
        wefwefwefwe
      </div>
    </div>

  </div>
</template>

<style lang="scss" scoped>
* {
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  padding: 0;
  margin: 0;

  .footer {
    background-color: #171818;
    height: 300px;

    // center items
    position: relative;
    //---------------------
    
    .content {
      display: flex;
      color: #f7feff;
      
      // center (vertical and horizontal)
      position: absolute;
      top: 50%;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      //---------------------

      .contact {
        width: 400px;
        .contact-header {
          margin-bottom: 30px;
        }
        .contact-body {
          margin-bottom: 10px;
        }
        .contact-footer {
          a {
            font-size: 20px;
            color: #f7feff;
            margin-right: 20px;
            
          }

          a:hover {
            color: #a5a4a4;
          }

        }
      }

      .link {
        
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