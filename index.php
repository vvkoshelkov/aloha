<?php
session_start();
require_once './kernel/index.php';
$kernel->loadModule('users');
$kernel->hook('checkRigths');
if (!$site['admin']) {
    $module=(!empty($site['module']) ) ? $site['module'] : 'pdfGen';
    $kernel->loadModule($module);
    //$page=(!empty($site['pageName'])) ? $site['pageName'] : 'object';
    if (!empty($site['pageName']))
        $kernel->hook($site['pageName'], $_POST);
    else
        echo "<center><h1>На данный момент сайт находится в разработке!</h1></center>";
} else {
    if ($kernel->getOption('logged')) {
        $module=(!empty($site['module'])) ? $site['module'] : 'dashboard';
        $kernel->loadModule($module,'admin/');
        $page=(!empty($site['pageName'])) ? $site['pageName'] : 'index';
        $kernel->hook($page, $_POST); 
    } else {
        $kernel->hook('login'); 
    }
}
$messages=$kernel->messages();
if (!empty($messages))
    var_dump($messages);