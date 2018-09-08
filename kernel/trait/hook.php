<?php
/*
	Kernel authors:
	Koshelkov Viktor & Rybkin Ivan
	email: freegamesbase@gmail.com
	phone: +7 902 040 0424
*/
trait kernel_hook
{
        private $kernel_hooks=array();
        
        public function hook_add($event,$runner,$priority=100)
        {
            if(!isset($this->kernel_hooks[$event])){ $this->kernel_hooks[$event] = array(); }
            $this->kernel_hooks[$event][]=array('run'=>$runner,'priority'=>$priority);
        }
        
        private function hook_compare($a,$b)
        {
            if ($a['priority'] == $b['priority']) {return 0;}
            return ($a['priority'] < $b['priority']) ? -1 : 1;
        }
        
        public function hook_prepare()
        {
            foreach($this->kernel_hooks as $name => $val)
            {
                uasort($this->kernel_hooks[$name], array($this,'hook_compare'));
            }
        }
        
        public function  hooks_emit($source)
        {
            foreach($source as $action)
            {
                if(isset($action['action']))
                    $this->hook($action['action']);
            }
        }
        
        public function hook()
        {
            $argc = func_num_args();
            $argv = func_get_args();
            if($argc<1)return;
            $event    = $argv[0];
            unset($argv[0]);
            foreach($this->kernel_hooks[$event] as $hook)
            {
                $runner = $hook['run'];
                call_user_func_array($runner, $argv);
            }
        }
}