<?php
    class dashboard {
        public $kernel,$pageInfo;
        function __construct($kernel) {
            $this->kernel=$kernel;
            $kernel->hook_add('index',[$this,'index'],100);
            $this->pageInfo=$this->kernel->getResponse();
        }
        function index($post) {
            if ($this->pageInfo['ajax']) {
                $this->kernel->template('admin/dashboard');
            } else {
                $this->kernel->template('admin/header');
                $this->kernel->template('admin/dashboard');
                $this->kernel->template('admin/footer');
            }
        }
    }
?>