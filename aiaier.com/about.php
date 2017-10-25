<?php
require "./inc/config.php";
require "./inc/function.class.php";


?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="<?php echo $setinfo[keywords];?>" />
<meta name="description" content="<?php echo $setinfo[description];?>" />
<title><?php echo $setinfo[title];?></title>
<link href="inc/css/css1.css" rel="stylesheet" type="text/css">
<script src="/inc/js/jquery.min.js"></script>
<script src="/inc/js/swfobject_modified.js" type="text/javascript"></script>
<script src="/inc/js/jcarousellite_1.0.1.pack.js" type="text/javascript"></script>
	<script type="text/javascript" src="inc/js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<link rel="stylesheet" type="text/css" href="inc/js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />

<!--[if lt IE 7]>
        <script type="text/javascript" src="/inc/js/unitpngfix.js"></script>
<![endif]-->
<script type="text/javascript">

   $(document).ready(function(){

    $("#about").jCarouselLite({

        btnNext: "#righttarr",

        btnPrev: "#leftarr",

   auto: 3000,

   scroll: 1,

   speed: 300,

   visible: 1

    }); 

   });

</script>

<?php if($setinfo[iscopy]=='1'){?>
<script language="JavaScript">
document.oncontextmenu=new Function("event.returnValue=false;");
document.onselectstart=new Function("event.returnValue=false;");
</script>
<?php }?>
<?php if($setinfo[otherheader]!=''){echo $setinfo[otherheader];}?>

</head>
<body>

<? require "header.php"; ?>


<div id="main_box">
<div id="leftarr"><img src="inc/pics/arrleft.png" width="9" height="15" /></div>
<div id="about">
<ul>
<?
$getpagesetpicnuminfo=getpagesetpicnuminfo(3,5,'opicname as pic');
for($i=0;$i<sizeof($getpagesetpicnuminfo);$i++){
?>
<li><a href="/upload/layout/<?=$getpagesetpicnuminfo[$i][pic];?>"  id="imgs00"><img src="/upload/layout/<?=$getpagesetpicnuminfo[$i][pic];?>" /></a></li>
<? }?>

</ul>
</div>
<div id="righttarr"><img src="inc/pics/arrright.png" width="9" height="15" /></div>
</div><!--end main_box!-->



<? require "footer.php"; ?>

    
    <script type="text/javascript">
		$(document).ready(function() {

		$("a[href$='.jpg']").fancybox(
		
					{
        'transitionIn'  :   'elastic',
        'transitionOut' :   'elastic',
        'speedIn'       :   300, 
        'speedOut'      :   200

    }
		);
			
		   });	
		</script>	

</body>
</html>
