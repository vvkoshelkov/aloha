<?php
/*
	Kernel author:
	Koshelkov Viktor & Rybkin Ivan
	email: freegamesbase@gmail.com
    phone: +7 902 040 0424
    
*/
trait kernel_cache
{
    public function loadCss($c=false,$v=true,$cdn='') {
        $cf='cache';
        $r='<noscript>';
        $p='';
        if (!empty($cdn)) {
            foreach($cdn as $cn) {
                $r.="<link rel='stylesheet' media='all' type='text/css' href='{$cn}' />";
                $p.="<link rel='preload' media='all' type='text/css' href='{$cn}' as='style' onload=\"this.rel='stylesheet'\" />";
            }
        }
        if ($c) {
            $r.="<link rel='stylesheet' media='all' type='text/css' href='{$this->CCJ('css',$cf,$v)}' />";
            $p.="<link rel='preload' media='all' type='text/css' href='{$this->CCJ('css',$cf,$v)}' as='style' onload=\"this.rel='stylesheet'\" />";
        } else {
            $f = scandir($this->options['theme']['css']);
            sort($f);
            foreach ($f as $ff) {
                if (!in_array($ff,array(".","..",".htaccess","thumbs.db","Thumbs.db")) && substr($ff, 0, 1) !== '_') {
                    if (is_file($this->options['theme']['css']."/{$ff}")) {
                        $r.="<link rel='stylesheet' media='all' type='text/css' href='".siteRoot."/themes/".$this->options['themeName']."/css/{$ff}' async />";
                        $p.="<link rel='preload' media='all' type='text/css' href='".siteRoot."/themes/".$this->options['themeName']."/css/{$ff}' as='style' onload=\"this.rel='stylesheet'\" />";
                    }
                }
            }
        }
        $r.='</noscript>';
        echo $r.$p;
    }                                                                               
    public function loadJs($c=false,$v=true,$cdn='') {
        $cf='cache';         
        $r='';
        if (!empty($cdn)) {
            foreach($cdn as $cn) {
                $r.="<script src='{$cn}'></script>";
            }
        }
        if ($c) {
            $r.="<script class='b-lazy' data-src='{$this->CCJ('js',$cf,$v)}'></script>";
        } else {
            $f = scandir($this->options['theme']['js']);
            sort($f);
            
            foreach ($f as $ff) {
                if (!in_array($ff,array(".","..",".htaccess","thumbs.db","Thumbs.db")) && substr($ff, 0, 1) !== '_' && substr($ff, 0, 1) !== '.')
                    if (is_file($this->options['theme']['js']."/{$ff}"))
                        $r.="<script src='".siteRoot."/themes/".$this->options['themeName']."/js/{$ff}'></script>";
            }
        }
        echo $r;
    }                                                                                  						
	private function cachehtml($filename){
        //$result=$this->minifyHTML($string);                                         						
        return $result;                                                             						
    } 
	
	public function cacheMysqlResult() {
		echo 'asd';
		
		
	}
	
	public function loadMeta() {
        $meta='<meta name="viewport" content="width=device-width, initial-scale=1">';
        $meta.='<meta http-equiv="Content-Type" content="text/html; charset=utf-8">';
        $meta.='<meta charset="utf-8">';
        $meta.='<meta name="theme-color" content="#317EFB"/>';
        $meta.='<meta http-equiv="X-UA-Compatible" content="IE=edge">';
        echo $meta;
    }
	
    private function CCJ($t,$cf='cache',$v){
        $ft=$this->loadVersion($t);
        if (file_exists("{$this->options['themeUri']}/{$cf}/{$t}/{$cf}.{$t}")) {   
            $ct=$this->loadVersion("{$cf}/{$t}/");
            $vt=($v)?"?v{$ft}":'';
            if ($ft===$ct) {
                return siteRoot."/themes/".$this->options['themeName']."/{$cf}/{$t}/{$cf}.{$t}{$vt}";
            }
        }
        $c=$this->minify($this->gluing($t),$t);
        file_put_contents("{$this->options['themeUri']}/{$cf}/{$t}/{$cf}.{$t}",$c);
        touch("{$this->options['themeUri']}/{$cf}/{$t}/{$cf}.{$t}",$ft);
        return siteRoot."/themes/".$this->options['themeName']."/{$cf}/{$t}/{$cf}.{$t}{$vt}"; 
    }
/*-------------------------------------------------Заглушки-------------------------------------------------*/
    private function loadVersion($p) {
        $r = 0;
        $f = scandir($this->options['themeUri'].'/'.$p);
        sort($f);                         						                                            //Заглушка для loadCssJs
        foreach ($f as $ff) {                                                 								//
            if (!in_array($ff,array(".","..",".htaccess","thumbs.db","Thumbs.db")) && substr($ff, 0, 1) !== '_' && substr($ff, 0, 1) !== '.') {                     	//
                if (is_file("{$this->options['themeUri']}/{$p}/{$ff}")) {																//
                    $r=$r+filectime("{$this->options['themeUri']}/{$p}/{$ff}");															//
                }                                                           								//
            }                                                                   							//
        }                                                                           						//
        return $r;                                                             								//
    }                                                                                   					//
                                                                                     						//
    private function gluing($p) {                                            					//Склеивание
        $r = '';
        $f = scandir($this->options['themeUri'].'/'.$p);
        sort($f);                                                                     						//файлов
        foreach ($f as $ff) {                                                        						//входящие данные);
            if (!in_array($ff,array(".","..",".htaccess","thumbs.db","Thumbs.db")) && substr($ff, 0, 1) !== '_' && substr($ff, 0, 1) !== '.') {						//массив имен файлов
                if (is_file($this->options['themeUri'] . DIRECTORY_SEPARATOR . $p . DIRECTORY_SEPARATOR . $ff))                         						//путь к директории
                    $r .= file_get_contents($this->options['themeUri'] . DIRECTORY_SEPARATOR . $p . DIRECTORY_SEPARATOR . $ff);        							//расположения
            }                                                                       						//файлов
        }                                                                           						//возвращает
        return $r;                                                                  						//переменную со
    }                                                                                   					//всем кодом

}