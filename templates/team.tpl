<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>Team {$team->team_id} | Student Robotics</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="keywords" content="SR Student Robotics Team {$team->team_name} {$team->college_name}" />
	<meta name="description" content="Information about Student Robotics team '{$team->team_name}'" />
	<link rel="stylesheet" type="text/css" href="{$root_uri}css/main.css" />
	<link rel="stylesheet" type="text/css" href="{$root_uri}css/content_extra.css" />
	<link rel="stylesheet" type="text/css" media="print" href="{$root_uri}css/print.css" />
	<link rel="alternate" type="application/rss+xml" title="SR RSS" href="{$root_uri}feed.php" />
	<link rel="shortcut icon" href="{$root_uri}images/template/favicon.ico" />

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

	{include file=$header_file}


	<div id="{$page_id}" class="content team-page">

		<h1>{$team->team_name} - ({$team->team_id})</h1>
		<p id="college-name">{$team->college_name}</p>
		<img id="team-img" alt="Photograph of the progress made by team {$team->team_name}" src="{$team->image->url}" />

		{if $team->description->live != ""}
		<h2>About {$team->team_name}</h2>
		<p>
		{$team->description->live|strip_tags:false}
		</p>
		{/if}

		{if $team->url->live != ""}
		<h2>{$team->team_name} on the Web</h2>
		<p>
		<a href="{$team->url->live}">Visit the team's website</a>
		</p>
		{/if}

		{if isset($team->feed->latest)}
		<h2>Latest Blog Post</h2>
		<h3><a href="{$team->feed->latest->url}">{$team->feed->latest->title}</a></h3>
		<p>
		{$team->feed->latest->description}
		</p>
		{/if}

		<p></p>

	</div>

	{include file=$footer_file}

</div>

</body>

</html>

