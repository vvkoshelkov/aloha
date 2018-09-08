<?php 
    global $kernel;
    $kernel->template('header');
?>
  <div class="row">
    <div class="col-lg-6 col-md-8 col-sm-12 mx-auto">
      <div class="card">
        <h5 class="card-header info-color white-text text-center py-4 sticky-top">
          <strong>Аторизация</strong>
        </h5>
        <div class="card-body px-lg-5 pt-0">
          <form action="#" class="text-center" method="POST" style="color: #757575;">
            <div class="md-form">
              <input type="text" name="login" id="Login" class="form-control">
              <label for="Login">Введите имя пользователя</label>
            </div>
            <div class="md-form">
              <input type="password" name="password" id="password" class="form-control">
              <label for="password">Введите пароль</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </div>
<? $kernel->template('footer'); ?>