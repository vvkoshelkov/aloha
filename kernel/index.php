<?php
/*
	Kernel authors:
	Koshelkov Viktor & Rybkin Ivan
	email: freegamesbase@gmail.com
	phone: +7 902 040 0424
*/
define ('root',__DIR__.'/..');
define ('kernel',root.'/kernel');
define ('siteRoot',"http://" . $_SERVER['SERVER_NAME']);
/*------------------------Загрузка трейтов----------------------*/
include_once kernel.'/trait/cache.php';                                 //
include_once kernel.'/trait/options.php';                               //
include_once kernel.'/trait/module.php';                                //
include_once kernel.'/trait/hook.php';                                  //
include_once kernel.'/trait/template.php';                              //
include_once kernel.'/trait/pdf/fpdf.php'; 								//
include_once kernel.'/db.php';                                          //

require_once kernel.'/trait/dompdf/lib/html5lib/Parser.php';
require_once kernel.'/trait/dompdf/lib/php-font-lib/src/FontLib/Autoloader.php';
require_once kernel.'/trait/dompdf/lib/php-svg-lib/src/autoload.php';
require_once kernel.'/trait/dompdf/src/Autoloader.php';
Dompdf\Autoloader::register();
use Dompdf\Dompdf;

/*-------------------------Начало класса------------------------*/
class kernel {													//	Подключаем части класса.	
	use     kernel_cache,									 	//	Для удобства
			kernel_options,										//	класс был поделен по частям,
			kernel_module,										//	мелкие части остались в основном файле
			kernel_hook,										//	крупные подгружаются и разделены	
			kernel_template;									//	по разделам
/*----------------------------Public----------------------------*/
	public 	$pageText,$pdf,$db,$settings;						//	Публичные переменные
/*----------------------------Private---------------------------*/
	private $kernel_messages = array();	private $DBS;			//	Переменные внутри класса
/*--------------------------------------------------------------*/
	function __construct(){										//
			$this->options();									//	Конструктор класса
			$this->connectDb();									//
			$this->pdf= new FPDF();								//
			//$this->pdf = new Dompdf();
			$this->setOption('session',$_SESSION);				//
	}										 					//
/*--------------------------------------------------------------*/
	public function connectDb() {								//
		$this->DBS = $this->options['database'];				//	Переносим параметры бд в закрытую переменную
		unset ($this->options['database']);						//	Удаляем открытую переменную
		$this->db = new db($this->DBS);							//	Подключаемся к базе данных
	}															//
/*--------------------------------------------------------------*/
	public function insertQuery($array,$types='') {						//
		$query="INSERT INTO ?n (";								//
		$vals=',';
		$query.='';												//	Функция подготовки ключей Insert
			foreach ($array as $key=>$value) {					//	для отправки запроса к бд
				$query.='`'.$key.'`,';
				$vals.="'{$value}',";							//
			}													//
		$vals=  substr($vals, 0, -1);							//
		$query=  substr($query, 0, -1).')';						//
		$query.=' VALUES ('.$types.')';
		return $query;											//
	}															//
/*--------------------------------------------------------------*/
	private function minify($s,$t) {							//
            if ($t==='css') {									//
				$s = preg_replace('!/\*.*?\*/!s','', $s);		//	Поиск  
				$s = preg_replace('/\n\s*\n/',"\n", $s);		//	и замена пробелов
				$s = preg_replace('/[\n\r \t]/',' ', $s);		//	переносов строк
				$s = preg_replace('/ +/',' ', $s);				//	комментариев в ксс
				$s = preg_replace('/ ?([,:;{}]) ?/','$1',$s);	//	входящие данные
				$p = preg_replace('/;}/','}',$s);				//	переменная с текстом
            }													//	возвращает переменную
            if ($t==='js'){										//	с чистым кодом
                $p=$s;											//
            }													//
		return $p;												//
	}															//
/*--------------------------------------------------------------*/
	private function minifyHTML($s) {							//
		$p = preg_replace('/(?:\n\s*|\s\s+)/i', '', $s);		//
		return $p;												//
	}															//
/*--------------------------------------------------------------*/
	public function message($type,$code,$title,$text) {			//	Обработчик ошибок ядра.
		$i=count($this->kernel_messages)+1;						//	Сообщеня об ошибках копятся в массив
		$this->kernel_messages[$i]['type']=$type;				//	и потом в любом удобном месте можно 
		$this->kernel_messages[$i]['code']=$code;				//	вывести сообщения об ошибках.
		$this->kernel_messages[$i]['title']=$title;				//
		$this->kernel_messages[$i]['text']=$text;				//
	}															//
	public function messages() {								//
		return $this->kernel_messages;							//
	}															//
/*--------------------------------------------------------------*/
	public function loadSettings($file, $true=true) {			//Загрузка данных из ini файлов
		$parse=(file_exists($file))?							//входящие данные путь и название файла
			parse_ini_file($file, $true):false;					//настройка включения
		return $parse;											//возвращает массив данных заголовков
	}															//
}										 						//
/*--------------------------Конец класса------------------------*/
/*------------------------Обьявление класса---------------------*/
global $kernel;
$kernel = new kernel();											//		
/*-----------------------Загрузка информации--------------------*/
$site=$kernel->getResponse();									//			
/*--------------------------Конец класса------------------------*/

