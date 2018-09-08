<? global $kernel; 
var_dump($kernel->getOption('logged'));
?>
<div class="row">
    <div class="col-lg-10 col-md-12 col-sm-12 mx-auto">
      <div class="card">
        <div class="card-body px-lg-5 pt-0">
          <form action="#" class="text-center ajax2" data-target="#content" href="/admin/usersAdmin/add.html" method="POST" style="color: #757575;">
            <div class="aloha-form-el">
              <input type="text" name="name" id="name" value="asd" required />
              <span class="highlight"></span><span class="bar"></span><label for="name">Имя пользователя</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="login" id="login" required />
              <span class="highlight"></span><span class="bar"></span><label for="login">Логин</label>
            </div>
            <div class="aloha-form-el">
              <input type="text" name="password" id="password" required />
              <span class="highlight"></span><span class="bar"></span><label for="password">Пароль</label>
            </div>
            <button type="submit" name="submit" class="button">Сохранить</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <script>
  document.addEventListener('DOMContentLoaded', function(){
  Waves.attach('.button', ['waves-button', 'waves-float']);
    Waves.init();
  });
    </script>