<? global $kernel; ?>

<!-- Navbar -->

<div class="navbar">

    <div class="logo"><? $kernel->template('alohaLogo'); ?></div>

    <ul class="nav">

        <li class="item active"><a href="/admin/dashboard/index.html" class="ajax" data-title="Главная" data-target="#content">Главная</a></li>
        <?
            $group=$kernel->getOption('session')['groupId'];
            if ($group=='1') {
        ?>
            <li class="item-line"></li>
        <?
            }
        ?>
    </ul>

</div>

<!-- /.Navbar -->