<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:70:"E:\xampp\htdocs\tp5\public/../application/admin\view\featured\add.html";i:1486396562;s:71:"E:\xampp\htdocs\tp5\public/../application/admin\view\public\header.html";i:1486396326;s:71:"E:\xampp\htdocs\tp5\public/../application/admin\view\public\footer.html";i:1486396310;}*/ ?>
<!--包含头部文件-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="__STATIC__/admin/hui/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/admin/hui/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/admin/hui/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/admin/hui/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/admin/hui/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="__STATIC__/admin/hui/static/h-ui.admin/css/style.css" />
  <link rel="stylesheet" type="text/css" href="__STATIC__/admin/css/common.css" />
  <link rel="stylesheet" type="text/css" href="__STATIC__/admin/uploadify/uploadify.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>o2o平台</title>
<meta name="keywords" content="tp5打造o2o平台系统">
<meta name="description" content="o2o平台">
</head>
<body>
<div class="cl pd-5 bg-1 bk-gray mt-20"> 添加推荐位信息</div>
<article class="page-container">
  <form class="form form-horizontal" id="form-article-add" method="post" action="<?php echo url('featured/add'); ?>">
    <div class="row cl">
      <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>标题：</label>
      <div class="formControls col-xs-8 col-sm-3">
        <input type="text" class="input-text" value="" placeholder="" id="" name="title">
      </div>
    </div>

    <div class="row cl">
      <label class="form-label col-xs-4 col-sm-2">推荐图：</label>
      <div class="formControls col-xs-8 col-sm-9">
        <input id="file_upload"  type="file" multiple="true" >
        <img style="display: none" id="upload_org_code_img" src="" width="150" height="150">
        <input id="file_upload_image" name="image" type="hidden" multiple="true" value="">
      </div>
    </div>

    <div class="row cl">
      <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>所属分类：</label>
      <div class="formControls col-xs-8 col-sm-3"> <span class="select-box">
				<select name="type" class="select">

                  <?php if(is_array($types) || $types instanceof \think\Collection): $i = 0; $__LIST__ = $types;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                  <option value="<?php echo $key; ?>"><?php echo $vo; ?></option>
                  <?php endforeach; endif; else: echo "" ;endif; ?>
                </select>
				</span>
      </div>
    </div>
    <div class="row cl">
      <label class="form-label col-xs-4 col-sm-2">url：</label>
      <div class="formControls col-xs-8 col-sm-3">
        <input type="text" class="input-text" value="" placeholder="" id="" name="url">
      </div>
    </div>

    <div class="row cl">
      <label class="form-label col-xs-4 col-sm-2">描述：</label>
      <div class="formControls col-xs-8 col-sm-3">
        <input type="text" class="input-text" value="" placeholder="" id="" name="description">
      </div>
    </div>

    <div class="row cl">
      <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
        <button onClick="article_save_submit();" class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 添加</button>
      </div>
    </div>
  </form>
</article>
<script>
  /**定义页面全局变量**/
  var SCOPE = {
            'city_url' : '<?php echo url('api/city/getCitysByParentId'); ?>',
          'category_url' : '<?php echo url('api/category/getCategoryByParentId'); ?>',
          'uploadify_swf' : '__STATIC__/admin/uploadify/uploadify.swf',
          'image_upload' : '<?php echo url('api/image/upload'); ?>',
  };
</script>
<!--包含头部文件-->
<script type="text/javascript" src="__STATIC__/admin/hui/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="__STATIC__/admin/hui/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="__STATIC__/admin/hui/lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="__STATIC__/admin/hui/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="__STATIC__/admin/hui/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="__STATIC__/admin/hui/lib/jquery.validation/1.14.0/messages_zh.min.js"></script>  
<script type="text/javascript" src="__STATIC__/admin/hui/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="__STATIC__/admin/hui/static/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript" src="__STATIC__/admin/js/common.js"></script>
<script type="text/javascript" src="__STATIC__/admin/uploadify/jquery.uploadify.min.js"></script>
<script type="text/javascript" src="__STATIC__/admin/js/image.js"></script>
