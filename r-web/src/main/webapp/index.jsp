<%@page import="beans.Portafolio"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*,java.util.*,java.text.SimpleDateFormat"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="bAdministrarPublicaciones" class="beans.AdministrarPublicaciones" scope="page" />
<%@page import="beans.Publicacion"%>
<%@page import="beans.Parametro"%>
<%@page import="beans.Seccion"%>
<%@page import="beans.RepositorioFotos"%>	
<html>

<head>
	<meta charset="UTF-8">
	<title>MUASOFT - Software</title>
	<meta name="description" content="Administraci�n DDHH mujeres Afrocolombianas">
    
	
	<!-- Mobile Specific Meta -->	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

	<!-- Bootstrap -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- TimeCirlce style -->
    <link rel="stylesheet" href="assets/css/TimeCircles.css">

    <!-- Magnific Popup style -->
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    
    <!-- Custom stylesheet-->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">

    <!-- animate style -->
    <link rel="stylesheet" href="assets/css/animate.css">
    
    <!-- Font awesome -->
    <link rel="stylesheet" href="assets/font-awesome-4.3.0/css/font-awesome.min.css">    
    

    <!-- Added google font -->
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:700%20Open+Sans:400italic,700,600,800,400' rel='stylesheet' type='text/css'>

    <!--Fav and touch icons-->
    <link rel="shortcut icon" href="images/icons/favicon.ico">
    <link rel="apple-touch-icon" href="images/icons/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icons/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icons/apple-touch-icon-114x114.png">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
    
     <script language="javascript" type="text/javascript">
function fMenu()
	{
		var vError1 = false;
		var vError2 = false;
		if(document.getElementById('usuario').value=="")
		{
			vError1=true;
		
		}
		if(document.getElementById('contrasena').value=="")
		{
			vError2=true;
		}
		if(vError1)
		{
			if(vError2)
			{
				alert('�Debe digitar su documento y contrase�a de administrador!');
				document.getElementById('usuario').focus();
				
			}else
			{
				alert('�Debe digitar su documento!');
				document.getElementById('usuario').focus();
			}
		}else
		{
			if(vError2)
			{
				alert('�Debe especificar la contrase�a!');
				document.getElementById('contrasena').focus();
			}else
			{
				document.siss.submit();
			}
		
		}
		
	}
</script>
</head>
<body>
    <%
session.invalidate(); 
					response.setHeader("Cache-Control","no-store");
					response.setHeader("Pragma","no-cache");
					response.setDateHeader("Expires",0);
					
					
					Parametro parametro = new Parametro();
					String [] parametros2  = parametro.getarametros();
					 %>
					 
<!-- Pre Loader -->
	<div class="pre-loader">
		<div class="spinner"></div>
	</div>
  
   <!-- header start -->
   <header id="header" class="navbar-fixed-top">	
	    <!-- Sticky Navigation Start -->
        <div id="header-top" class="header-top">
	   	   <nav class="navbar navbar-default" role="navigation">
		       	<div class="container">
		       		<div class="row">
			       		<div class="col-sm-12">
			       			<div class="nav-block">
			       				<div class="row">
			       					<div class="col-sm-3 logo-block">
					       			    <!-- Brand and toggle get grouped for better mobile display -->
						              <div class="navbar-header">
						                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=
	                                    "#bs-example-navbar-collapse-1">
						                  <span class="sr-only">Men�</span>
						                  <span class="icon-bar"></span>
						                  <span class="icon-bar"></span>
						                  <span class="icon-bar"></span>
						                </button>
					       				<div class="logo">
					       					<h1><a href="#">MUASOFT</a></h1>
					       				</div>
					       				<!-- /.logo end -->
						              </div>
						       		</div>
						       		<div class="col-sm-9 navigation-bar">
						       			<!-- Collect the nav toggling -->
						                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						                  <ul class="nav navbar-nav">
						               
											
						                    
						                   
						                  </ul>             
						                </div><!-- /.navbar-collapse -->
						       		</div>
			       				</div>
			       			</div><!-- /.nav-block -->
			       		</div>		       			       			
		       		</div>
		       	</div>
	       </nav> <!-- nav end -->
	   </div><!-- /.header-top -->
        <!-- Sticky Navigation End -->	   
   </header>
   <!-- header end -->
   
   <!-- banner start --> 
   <section id="banner" class="banner">        
        <div id="element">
           <img src="images/banner.jpg" alt="banner image">
           <img src="images/banner2.jpg" alt="banner image">
           <img src="images/banner3.jpg" alt="banner image">
        </div>
        <div class="container-holder">
        	
        </div>
        <!-- /.container-holder end -->
        	<div class="container">
	   	    	<div class="row">
	   	    		<div class="col-sm-12">
	   	    		    <div class="banner-block">
	   	    			    <div class="flex_text text-slider">
	                            <ul class="slides">
	                                <li><h2>PROTECCI�N Y AMOR</h2></li>
	                                <li><h2>PROTEGER MUJERES</h2></li>
	                                <li><h2>AYUDA</h2></li>
	                                <li><h2>ALZA TU VOZ</h2></li>
	                            </ul>
	                        </div><!--/.text-slider-->
	                        <p>PARA LA NO VIOLENCIA Y EXPLOTACI�N </p>
	   	    		    </div><!-- /.banner-block -->
	   	    		</div>
	   	    	</div>
	   	    </div>
	   	    <div class="recent-cause">
	   	    	<div class="container">
	   	    		<div class="row">
	   	    			<div class="col-sm-6">
	   	    				<span class="most-recent">MUASOFT: Software de apoyo para la adm�n de</span>
	   	    				<h3>DDHH mujeres afrocolombianas</h3>
	   	    			</div>
	   	    			<div class="col-sm-6">
	   	    				<div class="promo">
			   	   				<a href="http://www.rutapacifica.org.co/" class="btn default-btn light-blue" target="_blank">Web Ruta Pac�fica</a> 
			   	   				
			   	   			</div>
	   	    			</div>
	   	    		</div>
	   	    	</div>
	   	    </div>
	   	    <!-- /.recent-cause end -->  
   </section>
   <!-- banner end -->  

   

  

   
   <!-- Partner start -->
    <section id="partner" class="partner" style="background-color:#F24B6A">
        <div class="container">
    		<div class="row" style="background-color:#F24B6A">
    			<div class="col-md-3 wow fadeInLeft">
    				<h3 class="head-pro">Patrocinadores</h3>
				    <p>Creen y depositan su confianza</p>
    			</div>
    			<div class="col-md-9" style="background-color:#F24B6A">
    				<div class="partner-logo fade-green wow fadeInLeft" style="background-color:#F24B6A">
    					<a href="#"><img src="imagenes/logo20anos.png" alt="partner logo" style='width:180px; height:180px'></a>
    				</div>
    				
    				
    				
    				<div class="partner-logo fade-green wow fadeInLeft" style="background-color:#F24B6A">
    					<a href="#"><img src="imagenes/embajadag.png" alt="partner logo"  style='width:650px; height:auto'></a>
    				</div>
    				
    				
    			
    				
    				
    				
					
    			</div>
    		</div>
    	</div>
    </section>
    <!-- partner end -->

   

  

   

   <!-- map start 
   <div id="map" class="map">
	   	
   </div>-->
   <!-- map end -->
   
   
   <br/>
   <br/>
   <br/>
   <br/>
   <br/>
   
    <br/>
   <br/>
   <br/>
   <br/>
   <br/>
   
    <br/>
   <br/>
   <br/>
   <br/>
   <br/>

   <!-- contact-form start -->
   <div id="contact-form" class="contact-form">
   	    <div class="container">
	   		<div class="row">
	   			<div class="col-sm-12">
	   				<div class="contact-block wow fadeInDown" data-wow-duration="1s" data-wow-delay=".6s">
	   					<form class="contact_form" id="siss" name="siss" action="home.jsp" method="post">
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label class="sr-only" for="usuario">Documento</label>
									    <i class="fa fa-user"></i>
									    <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Escriba su documento de identidad" required="required">
									</div>
									<div class="form-group">
										<label class="sr-only" for="password">Clave</label>
									    <i class="fa fa-key"></i>
									    <input  class="form-control" type="password" name="contrasena" id="contrasena"  placeholder="Escriba su clave" required="required">
									</div>
									
								</div>
								<div class="col-sm-6">
									
									 <div class="form-group">
									    <i class="fa fa-paper-plane"></i>
									 	<input type="button"   onclick="fMenu()" class="btn default-btn" value="INGRESAR">
									 </div>
								</div>
								
							</div>
						</form>
	   				</div><!-- /.contact-form -->
	   			</div>
	   		</div>
	   	</div>
   </div>
   <!-- contact-form end -->

   <!-- footer start -->
   <footer>
   	   
   	    <div class="copyright">
   	    	<div class="container">
   	    		<div class="row">
   	    			<div class="col-sm-6">
   	    				<ul>
   	    					
   	    					<li><a href="https://www.facebook.com/rutapacifica?fref=ts" target="_blank"><i class="fa fa-facebook"></i></a></li>
       	    				<li><a href="https://twitter.com/RutaPacificaM" target="_blank"><i class="fa fa-twitter"></i></a></li>
   	    					
   	    					
   	    				</ul>
   	    			</div>
   	    			<div class="col-sm-6 text-right">
   	    				<p>� 2016 Software desarrollado por quimerapps.com</p>
   	    			</div>
   	    		</div>
   	    	</div>
   	    </div>
   	    <!-- /.copyright end -->
   	    <div id="go-to-top">
			<a href="#header-top"><i class="fa fa-angle-up"></i></a>
		</div>
   </footer>
   <!-- footer end -->

   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/js/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="assets/js/smoothscroll.js"></script>
	<script src="assets/js/jquery.scrollTo.min.js"></script>
	<script src="assets/js/jquery.localScroll.min.js"></script>
	<script src="assets/js/jquery.nav.js"></script>
    <script src="assets/js/jquery.flexslider-min.js"></script>
    <script src="assets/js/jquery.mixitup.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.js"></script>
    <script src="assets/js/TimeCircles.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/jquery.ajaxchimp.min.js"></script>
	<script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/jquery.placeholder.js"></script>
    <script src="assets/js/matchMedia.js"></script>
    <script src="assets/js/jquery.velocity.min.js"></script>
    <script src="assets/js/jquery.kenburnsy.min.js"></script>
    <script src="assets/js/jquery.stellar.min.js"></script>
    <script src="assets/js/wow.js"></script>

    <script src="assets/js/script.js"></script>
    
   <script>
	  $(function() {
	   "use strict";
	       $("#element").kenburnsy({
	       
	   });
	  });
   </script>
    
    <script>			
		
		// The following example creates complex markers to indicate beaches near
		// Sydney, NSW, Australia. Note that the anchor is set to
		// (0,32) to correspond to the base of the flagpole.
		
		function initialize() {
			// Create an array of styles.
	  var styles = [
	    {
	      stylers: [
	        { hue: "#f24b6a" },
	        { saturation: 0 }
	      ]
	    },
	    {
	      featureType: 'water',
	      stylers: [
	       { visibility: "on" },
	       { color: "#A4C5C2" },
	       { weight: 2.2 },
	       { gamma: 2.54 }
	      ] 
	    },
	    {
	      featureType: "road",
	      elementType: "geometry",
	      stylers: [
	        { lightness: 100 },
	        { visibility: "simplified" }
	      ]
	    },{
	      featureType: "road",
	      elementType: "labels",
	      stylers: [
	        { visibility: "off" }
	      ]
	    }
	  ];

	  // Create a new StyledMapType object, passing it the array of styles,
	  // as well as the name to be displayed on the map type control.
	  var styledMap = new google.maps.StyledMapType(styles,
	    {name: "Styled Map"});
			
			
			//40.705643, -74.0107624
		  var mapOptions = {
			zoom: 13,
			center: new google.maps.LatLng(5.685553, -76.660704),
			mapTypeControlOptions: {
		    mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
		   },
		  scrollwheel: false,
		  disableDefaultUI: true
		  }
		  var map = new google.maps.Map(document.getElementById('map'),
										mapOptions);
		  map.mapTypes.set('map_style', styledMap);
		  map.setMapTypeId('map_style');
		
		  setMarkers(map, beaches);
		}
		
		/**
		 * Data for the markers consisting of a name, a LatLng and a zIndex for
		 * the order in which these markers should display on top of each
		 * other.
		 */
		var beaches = [
		 
		  ['Sede Choc�', 5.685553, -76.660704, 1],
		];
		
		function setMarkers(map, locations) {
		  // Add markers to the map
		
		  // Marker sizes are expressed as a Size of X,Y
		  // where the origin of the image (0,0) is located
		  // in the top left of the image.
		
		  // Origins, anchor positions and coordinates of the marker
		  // increase in the X direction to the right and in
		  // the Y direction down.
		  var image = {
			url: 'images/marker.png',
			// This marker is 20 pixels wide by 32 pixels tall.
			size: new google.maps.Size(43, 63),
			// The origin for this image is 0,0.
			origin: new google.maps.Point(0,0),
			// The anchor for this image is the base of the flagpole at 0,32.
			anchor: new google.maps.Point(0, 32)
		  };
		  // Shapes define the clickable region of the icon.
		  // The type defines an HTML &lt;area&gt; element 'poly' which
		  // traces out a polygon as a series of X,Y points. The final
		  // coordinate closes the poly by connecting to the first
		  // coordinate.
		  var shape = {
			  coords: [1, 1, 1, 20, 18, 20, 18 , 1],
			  type: 'poly'
		  };
		  for (var i = 0; i < locations.length; i++) {
			var beach = locations[i];
			var myLatLng = new google.maps.LatLng(beach[1], beach[2]);
			var marker = new google.maps.Marker({
				position: myLatLng,
				map: map,
				icon: image,
				shape: shape,
				title: beach[0],
				zIndex: beach[3]
			});
		  }
		}
		
		google.maps.event.addDomListener(window, 'load', initialize);



	</script>
	 

</body>

<!-- Mirrored from codepassenger.com/html/femina/index-image-slider.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Mar 2016 20:20:49 GMT -->
</html>