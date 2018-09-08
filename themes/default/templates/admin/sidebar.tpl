<? global $kernel; ?>
<div class="admin-sidebar">
<div class="col-md-6 menu-title float-left"><h2>Главная</h2></div>
<div class="col-md-6 menu-title float-left text-right"><h5>Добро пожаловать <?=$kernel->getOption('session')["userName"]?>. </h5><button class="dayNight">День</button></div>
</div>