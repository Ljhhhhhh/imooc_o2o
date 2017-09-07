<?php
namespace app\admin\controller;
use think\Controller;
class Index extends  Controller
{
    public function index()
    {
        return $this->fetch();
    }
	public function test() {
        print_r(\Map::getLngLat('北京昌平沙河地铁'));
		 return 'singwa';
	}
    public function map() {
        return \Map::staticimage('北京昌平沙河地铁');
    }
    public function welcome() {
        //\phpmailer\Email::send('463785435@qq.com','tp5-emaiil','sucess-hala');
        //return '发送邮件成功';
        //return $this->fetch();
        return "欢迎来到o2o主后台首页!";
    }
}
