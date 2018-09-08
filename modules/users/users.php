<?php
class users {
	public $kernel,$pageInfo;
	function __construct($kernel) {
		$this->kernel=$kernel;
		$kernel->hook_add('checkRigths',[$this,'checkRigths'],100);
		$kernel->hook_add('login',[$this,'login'],100);
		$this->pageInfo=$this->kernel->getResponse();
	}
	function loadRigths($post) {
		
	}
	function checkRigths() {
		if (!empty($_SESSION['logged']) && $_SESSION['logged']) {
			if ($this->pageInfo['admin']==true) {
				if (!empty($_SESSION['isAdmin']) && $_SESSION['isAdmin']) {
					$this->kernel->setOption('logged', true);
					return;
				} else {
					$this->kernel->setOption('logged', false);
					return;
				}
				
			} else {
				$this->kernel->setOption('logged', true);
				return;
			}
		}
		$this->kernel->setOption('logged', false);
	}
	function login () {
		if(!empty($_POST['login']) && (!empty($_POST['password']) || $_POST['password']!="")) {
			$query="SELECT user.name as userName,
							user.l_users as iserId,
							user.lname as lname,
							user.patronymic as patronymic,
							user_groups.name as groupName,
							user_groups.is_admin as is_admin,
							user_groups.l_user_groups as groupId,
							rights.*
					FROM ?n as user 
					LEFT JOIN ?n as user_groups ON user.l_user_groups=user_groups.l_user_groups 
					RIGHT JOIN ?n as rights ON user_groups.l_user_groups=rights.l_user_groups 
					WHERE user.login=?s AND user.password=?s";
			$result=$this->kernel->db->getAll($query,'l_users','l_user_groups','r_rights',$_POST['login'],sha1($this->pageInfo['salt'].$_POST['password']));
			if (!empty($result[0])) {
				$_SESSION['logged']=true;
				$_SESSION['userName']=$result[0]['userName'];
				$_SESSION['lname']=$result[0]['lname'];
				$_SESSION['patronymic']=$result[0]['patronymic'];
				$_SESSION['groupId']=$result[0]['groupId'];
				$_SESSION['groupName']=$result[0]['groupName'];
				$_SESSION['iserId']=$result[0]['iserId'];
				if ($result[0]['is_admin']=='1')
					$_SESSION['isAdmin']=true;
				foreach ($result as $item) {
					$_SESSION['rigths'][$item["module"]]=$item["state"];
				}
			} else {
				$this->kernel->template('forms/formLogin');
			}
		} else {
			$this->kernel->template('forms/formLogin');
		}
	}
}