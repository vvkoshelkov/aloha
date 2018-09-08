<? global $kernel; ?>
<!DOCTYPE html>
<html>
    <head>
        <title>Aloha</title>
        <? $kernel->loadMeta(); ?>
        <? $kernel->loadCss($c=true,$v=true,$cdn=array()); ?>
        <link rel="shortcut icon" type="image/png" href="/themes/default/images/favicon.ico"/>
    </head>
    <body>
        <header class="admin-header admin-header col-12 col-sm-8 col-md-4 col-lg-2 admin-mobile-menu">
            <? $kernel->template('admin/navbar'); ?>
        </header>
        <div class="admin-side col-lg-10">
            <? $kernel->template('admin/sidebar'); ?>