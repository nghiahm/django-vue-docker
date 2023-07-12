<template>
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-md-8 col-lg-6 col-xl-4">
        <div class="card">
          <div class="card-header">
            <h4>Sign in to your account</h4>
          </div>
          <div class="card-body">
            <form class="form-login" @submit="register">
              <div class="form-group">
                <input type="text" placeholder="Username" id="username" class="form-control" name="name" required="" />
              </div>
              <div class="form-group">
                <input type="password" placeholder="Password" id="password" class="form-control" name="password"
                  required="" />
              </div>
            </form>
          </div>
          <div class="card-footer">
            <div class="checkbox">
              <input type="checkbox" id="checkbox" name="remember" />
              <label for="checkbox">Remember me</label>
            </div>
            <div class="button-login">
              <button type="submit" class="btn btn-dark btn-block">Login</button>
            </div>
            <div class="text-register">
              <p>Don't have an account?<router-link to="/register">Register</router-link></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
    
<style lang="scss" scoped>
* {
  // font-family: 'Courier New', Courier, monospace;
  margin: 0;
  padding: 0;
}

.container {
  padding-top: 50px;

  .card {
    .card-header {
      text-align: center;
      padding: 5px;
    }

    .card-body {
      .form-group {
        margin: 10px;

        input[type=text] {
          padding: 0.5rem;
        }

        input[type=password] {
          padding: 0.5rem;
        }
      }
    }

    .card-footer {
      padding: 10px;

      .checkbox {
        display: flex;
        justify-content: right;

        input[type=checkbox] {
          margin-right: 10px;
        }
      }

      .button-login {
        display: flex;
        justify-content: center;
        padding: 10px;

        button[type=submit] {
          padding: 5px;
          width: 400px;
          border-radius: 5px;
        }
      }

      .text-register {
        padding: 5px;
        display: flex;
        justify-content: center;
      }
    }
  }

}
</style>
    
<script>
import { reactive } from 'vue';

export default {
  setup() {

    const user = reactive({
      username: '',
      password: ''
    })

    const register = () => {

    }

    return {
      register
    }
  }
}
</script>