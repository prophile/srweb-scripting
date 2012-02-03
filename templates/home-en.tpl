<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>Welcome to Student Robotics | Student Robotics</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="keywords" content="student, robotics, robot, srobo, competition, southampton" />
	<meta name="description" content="Student Robotics is an exciting competition between sixth form schools and colleges to build fully autonomous robots." />
	<meta name="google-site-verification" content="GizX0DcCqEeGihd9CyYaqM1bVXUB-lhB9rhm53UdRC8" />
	<link rel="stylesheet" type="text/css" href="{$root_uri}css/main.css" />
	<link rel="stylesheet" type="text/css" href="{$root_uri}css/home.css" />
	<link rel="alternate" type="application/rss+xml" title="SR RSS" href="{$root_uri}feed.php" />
	<link rel="shortcut icon" href="{$root_uri}images/template/favicon.ico" />

	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>

	{literal}
	<script type="text/javascript">
	  $(document).ready(function() {
	    $("#date_tabs").tabs();
	  });
	</script>
	{/literal}

	{if $live_site}
	{literal}

	<script type="text/javascript">

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-831291-4']);
	  _gaq.push(['_trackPageview']);

	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();

	</script>

	<!-- Piwik -->
	<script type="text/javascript">
	  var pkBaseURL = (("https:" == document.location.protocol) ? "https://www.studentrobotics.org/piwik/" : "http://www.studentrobotics.org/piwik/");
	  document.write(unescape("%3Cscript src='" + pkBaseURL + "piwik.js' type='text/javascript'%3E%3C/script%3E"));
	</script><script type="text/javascript">
	  try {
	  var piwikTracker = Piwik.getTracker(pkBaseURL + "piwik.php", 1);
	  piwikTracker.trackPageView();
	  piwikTracker.enableLinkTracking();
	  } catch( err ) {}
	</script>
	<!-- End Piwik Tag -->

	{/literal}
	{/if}


</head>

<body>
<!-- More Piwik stuff -->
{if $live_site}
<noscript><p><img src="http://www.studentrobotics.org/piwik/piwik.php?idsite=1" style="border:0" alt="" /></p></noscript>
{/if}
<!-- End More Piwik Stuff -->
<div id="pageWrapper">

	{include file="header-en.tpl"}

	<div class="content">

		<div id="topBanner">
			<!-- <img src="{$root_uri}images/content/srobo_website_robot.png" alt="Image of Robot" /> -->
			<img src="{$root_uri}images/content/keyboardcat.jpg" alt="Keyboard Cat" style="margin-left:92px" />
	
			<h1>Welcome to Student Robotics</h1>
	
			<p>Student Robotics is an exciting competition, held at 
			the University of Southampton, between teams of students from sixth 
			form schools and colleges, to build fully autonomous robots. Led by 
			a group of students from the University of Southampton, participating 
			teams will have to design, build and test their robots, ready to compete 
			against other teams.</p>
		</div>

		<div id="latestNews">

			{latestRSS}

		</div>

		<div id="expMenuAndBoxWrapper">

			<div id="expandedMenu">

				<h3>Take a Look Around</h3>

				{makemenu menu=$side_menu}

			</div>

			<div id="boxWrapper">

				<div class="box">
					<h3><a href="{$root_uri}about/gettinginvolved">Want to Get Involved?</a></h3>
					<p>
						Student Robotics is always looking for more people to get involved, and not just schools.
						Whether you're a University student or a company considering sponsoring the competition,
						you are more than welcome to get involved.
					</p>

				</div>

				<div class="box">
					<h3><a href="{$root_uri}schools/key_dates">Key Dates</a></h3>
					<div id="date_tabs">
						<ul>
							<li><a href="#date_soton">Southampton</a></li>
							<li><a href="#date_bristol">Bristol</a></li>
						</ul>
						<div id="date_soton">
							<a href="{$root_uri}schools/tech_days">Tech Days</a>:
							<ul>
								<li><a href="{$root_uri}events/sr2012/tech_day_03_12">3rd December</a></li>
								<li><a href="{$root_uri}events/sr2012/2012-02-04-soton_tech_day_2">4th February</a></li>
								<li>17th March</li>
							</ul>
						</div>
						<div id="date_bristol">
							Tech Days:
							<ul>
								<li><a href="{$root_uri}events/sr2012/2012-02-11-bristol_tech_day">11th February</a></li>
								<li>10th March</li>
							</ul>
						</div>
					</div>
					<div>
						Competition:
						<ul>
							<li>14th &amp; 15th April</li>
						</ul>
					</div>

				</div>

				<div class="box clearboth">
					<h3><a href="{$root_uir}ide">The IDE</a></h3>
					<p>
						<a href="{$root_uri}ide"><img src="{$root_uri}images/template/sr_round_flat.png" alt="SR logo" title="SR logo" /></a>

						The Student Robotics web&ndash;based <abbr title="Integrated Development Environment">IDE</abbr>
						is used by all of the schools &amp; colleges taking part to write programs for their robots.
						You will need to be registered to use it.
					</p>
				</div>

				<div class="box">
					<h3><a href="{$root_uri}schools/kit/">The Kit</a></h3>
					<p>
						<a href="{$root_uri}schools/kit/"><img src="{$root_uri}images/template/kit_motor_board.jpg" alt="motor board prototpye" title="Motor Board Prototype" /></a>
						Student Robotics design and build a range of easily&ndash;programmable boards
						designed specifically for building robots. The teams receive the kit at Kickstart
						and have about 7 months to build a competition&ndash;winning robot.
					</p>
				</div>

			</div>

		</div>

		<p></p>

	</div>


	{include file="footer-en.tpl"}

</div>

</body>

</html>

