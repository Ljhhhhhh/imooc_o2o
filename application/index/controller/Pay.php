<?php
namespace app\index\controller;
use think\Controller;
use wxpay\database\WxPayUnifiedOrder;
use wxpay\NativePay;
use wxpay\WxPayConfig;
use wxpay\WxPayApi;
use wxpay\WxPayNotify;
use wxpay\PayNotifyCallBack;

class Pay extends Base
{
    public function index() {
        if(!$this->getLoginUser()) {
            $this->error('请登录', 'user/login');
        }
        $orderId = input('get.id', 0, 'intval');
        if(empty($orderId)) {
            $this->error('请求不合法');
        }
        $order = model('Order')->get($orderId);
        if(empty($order) || $order->status != 1 || $order->pay_status !=0 ) {
            $this->error('无法进行该项操作');
        }
        // 严格判定 订单是否 是用户 本人
        if($order->username != $this->getLoginUser()->username) {
           $this->error('不是你的订单你瞎点个啥，做人要厚道');
        }
        $deal = model('Deal')->get($order->deal_id);

        // 生成 二维码
        $notify = new NativePay();
        $input = new WxPayUnifiedOrder();
        $input->setBody($deal->name);
        $input->setAttach($deal->name);
        $input->setOutTradeNo($order->out_trade_no);
        $input->setTotalFee($order->total_price*100);
        $input->setTimeStart(date("YmdHis"));
        $input->setTimeExpire(date("YmdHis", time() + 600));
        $input->setGoodsTag("QRCode");
        $input->setNotifyUrl("http://139.199.7.39/index.php/index/weixinpay/notify");
        $input->setTradeType("NATIVE");
        $input->setProductId($order->deal_id);
        $result = $notify->getPayUrl($input);
        if(empty($result["code_url"])) {
            $url = '';
        }else {
            $url = $result["code_url"];
        }

        return $this->fetch('', [
            'deal' => $deal,
            'order' => $order,
            'url' => $url,
        ]);
        // 调取微信支付的  二维码
        //return '订单处理成功';
    }

    public function paysuccess()
    {

        if(!$this->getLoginUser()) {
            $this->error('请登录', 'user/login');
        }

        return $this->fetch();
        
    }

}
