<cfoutput>
<!--- Place HTML here that should be used as the default layout of your application --->
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
	    <title>Grand Life | #pageTitle#</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">
		#stylesheetLinkTag("dash, customdash, uploadify, default")#
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
	      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
        <link rel="shortcut icon" href="/images/favicon.ico">
	</head>
	<body id="index" data-spy="scroll" data-target=".ui-sidebar">
    	<!-- Nav -->
		#includePartial("/partials/dashmenu")#
        <!-- /nav -->
        <div id="main">
            <!-- Content -->
        	#includeContent()# 
            <!-- /Content -->
        </div>
        <img src="../../images/ajax_spinner.gif" alt="loader" id="ajax-loader" />
        <footer>
        </footer>
		<cfif get("environment") is "design">
			#javascriptIncludeTag("jquery.min")#
		<cfelse>
			#javaScriptIncludeTag("https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")#
		</cfif>
		#javaScriptIncludeTag("bootstrap.min")#
        #javaScriptIncludeTag("jquery-impromptu.3.1.min, swfobject, jquery.uploadify.v2.1.0.min, jquery-uberuploadcropper, jcrop/js/jquery.Jcrop.min")#
        
        <script type="text/javascript">
			$(function() {
				$('##profileform').hide();
				$('##UploadPhoto').uberuploadcropper({
					//---------------------------------------------------
					// uploadify options..
					//---------------------------------------------------
					'uploader'  : '../../javascripts/uploadify.swf',
					'script'    : '../../miscellaneous/uploadify.php',
					'cancelImg' : '../../images/cancel.png',
					'multi'     : false,
					'auto'      : true,
					'folder'    : '../../images/profile/#session.user.id#',
					'fileDesc'  : 'JPG',
					'fileExt'   : '*.jpg;*.jpeg',
					//---------------------------------------------------
					//now the cropper options..
					//---------------------------------------------------
					'aspectRatio': 1, 
					'allowSelect': true,			//can reselect
					'allowResize' : true,			//can resize selection
					'setSelect': [ 0, 0, 200, 200 ],	//these are the dimensions of the crop box x1,y1,x2,y2
					'minSize': [ 180, 210 ],		//if you want to be able to resize, use these
					//'maxSize': [ 180, 210 ],
					/*
					onError: function (a, b, c, d) {
						if (d.status == 404)
							alert('Could not find upload script. Use a path relative to: '+'<?= getcwd() ?>');
						else if (d.type === "HTTP")
							alert('error '+d.type+": "+d.status);
						else if (d.type ==="File Size")
							alert(c.name+' '+d.type+' Limit: '+Math.round(d.sizeLimit/1024)+'KB');
						else
							alert('error '+d.type+": "+d.text);
					},*/
					//---------------------------------------------------
					//now the uber options..
					//---------------------------------------------------
					'cropScript': '../../miscellaneous/crop.php',
					'onComplete': function(imgs,data){ 
						$('##PhotoPrev').attr('src','../../images/profile/#session.user.id#/'+imgs[0].name +'?d='+ (new Date()).getTime());
						$('##uploadform').hide();
						$('##user-profile-photourl').attr('value', imgs[0].name);
						$('##profileform').show(); 
					}
				});
				
				var $mainContent = $("##main-content"),
					siteURL = "/index.cfm/",
					mainURL = "http://" + top.location.toString();
					$internalLinks = $('aside li a[href^="' + siteURL + '"]'),
					URL = '';
				
				$('aside li, .content-menu-box').click(function() {
					$('.active').removeClass('active').children('div').removeClass('selected');
					$(this).addClass('active');
					$(this).children('div').addClass('selected');
					
					URL = $(this).find('a').attr('href');
					URL = URL + " ##inside";
					$('##ajax-loader').show();
					$mainContent.animate({opacity:"0.01"});
					$mainContent.load(URL, function(){
						$('##ajax-loader').hide();
						$mainContent.animate({opacity:"1"});
						});
					console.log(URL);
					return false;
				});
								
			});
		</script>

	</body>
</html>
</cfoutput>