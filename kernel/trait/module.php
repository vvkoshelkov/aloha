<?php
/*
	Kernel authors:
	Koshelkov Viktor & Rybkin Ivan
	email: freegamesbase@gmail.com
	phone: +7 902 040 0424
*/
trait kernel_module
{
        public $modules=array();
/*--------------------------------------Загрузка--------------------------------------------*/
        function loadModule($name,$pathM='') {                                                                            //
            $path = root."/modules/{$pathM}{$name}";
            $this->modules[$name] = false;                                                                      //
            if(empty($this->modules[$name]) && !is_object($this->modules[$name])) {                             //
                if(is_dir ($path)) {                                                                            //
                   // loadSettings("{$path}/settings.ini",true);                                                  //
                    if(file_exists("{$path}/{$name}.php")) {                                                      //
                        include_once "{$path}/{$name}.php";                                                       //
                        (class_exists($name)) ?                                                                 //
                            $this->modules[$name] = new $name($this) :                                               //                                                                                  //
                            $this->message('error','1000',"Ошибка загрузки модуля {$name}","Нет объявления класса {$name}");  //
                    } else {
                        $this->message('error','1001',"Ошибка загрузки модуля {$name}","Нет файла {$path}{$name}.php");             //
                    }                                                                                           //
                } else {                                                                                        //
                    $this->message('error','1003',"Ошибка загрузки модуля {$name}","модуль {$path} отсутствует");
                }                                                                                               //
            }                                                                                                   //
            return $this->modules[$name];                                                                       //
        }  
        function showModulesLoaded() {
            var_dump($this->modules);
        }                                                                                                     //
}