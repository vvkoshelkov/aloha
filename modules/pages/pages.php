<?php
    class pages {
        public $kernel,$pageInfo;
        function __construct($kernel) {
            $this->kernel=$kernel;
            $kernel->hook_add('pagesShowItem',[$this,'pagesShowItem'],100);
            $kernel->hook_add('pagesAdd',[$this,'pagesAdd'],100);
            $kernel->hook_add('pagesEdit',[$this,'pagesEdit'],100);
            $kernel->hook_add('pagesRemove',[$this,'pagesRemove'],100);
            $this->pageInfo=$this->kernel->getResponse();
        }
        function pagesShowItem($post) {
            $this->kernel->template('form');
        }
        function pagesAdd($post) {
        }
        function pagesEdit($post) {
        }
        function pagesRemove($post) {
        }
    }
?>