<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/images/favicon.ico" />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-71665991-1', 'auto');
  ga('send', 'pageview');
</script>
<title>EverOffer</title>
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resources/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="resources/js/scripts.js"></script>
<link href="resources/css/styles.css" rel="stylesheet">
<!--//menu-->
<!--theme-style-->
<link
	href="https://fonts.googleapis.com/css?family=Archivo+Narrow:400,400italic,700,700italic"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,300italic,300,600italic,600,700,700italic,800,800italic"
	rel="stylesheet" type="text/css">
<link href="resources/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Real Home  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">

addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/fontawesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
	<div class="top-bar">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 topnumber">
                        <div class="top-number"><p><span class="glyphicon glyphicon-earphone"></span> +0123 456 70 90</p>
                                                </div>
                    </div>
                    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 topsoical">
                                                <ul class="social">
					<li><a
							href="https://www.facebook.com/everofferin-899034306817510/"
							target="_blank"><i> </i></a></li>
						<li><a href="https://plus.google.com/u/1/117351707117657554441/poss" target="_blank"><i class="gmail"> </i></a></li>
						<li><a href="https://twitter.com/OfferEver" target="_blank"><i class="twitter"> </i></a></li>
						<li><a href="https://www.linkedin.com/profile/view?id=AAIAABvd8-UB_EoU7cduobM9Om7YM8GsbLOv1Qs&trk=nav_responsive_tab_profile" target="_blank"><i class="camera"> </i></a></li>
						<li><a href="#"><i class="dribble"> </i></a></li>
					</ul>
                    </div>
                    <div class="col-sm-8 col-xs-8 topnavigation">
                       <div class="top-navigation">
                             <ul class="top-nav">
            <li><a href="javascript:void(0)" class="page-scroll">Frequently ask questions</a></li>
                     </ul>
                            
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

	<nav id="tf-menu" class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="welcome"><img
					src="resources/images/Logo.png"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="navbar-collapse collapse"
				id="bs-example-navbar-collapse-1" aria-expanded="false"
				style="height: 1px;">

				<ul class="nav navbar-nav navbar-right">
					<c:if test="${login== null}">
						<li><a href="login" class="page-scroll">Merchant
								login</a></li>
					</c:if>
				</ul>

				<c:if test="${login!= null}">
					<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span style="font-size: 16px">Hello : </span> <span
			style="font-weight: 900; font-size: 20px"> ${login.name}</span></a></li>
						<li><a href="addOffer" class="page-scroll">Add Offer</a></li>
							  <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">My Account</a>
            <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="logout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
            </li>	
					</ul>
					
				</c:if>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!--//-->

	<!--//header-->
</body>
</html>