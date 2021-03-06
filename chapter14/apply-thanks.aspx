<%@ Page Language="VB" ContentType="text/html" ResponseEncoding="utf-8"%>
<!doctype html>
<!-- The <!DOCTYPE> declaration must be the very first thing in your HTML document, before the <html> tag. -->
<html lang="en">
<!-- The lang attribute specifies the language of the element's content. Common examples are "en" for English -->
<head>
<meta charset="utf-8">
<!-- META DESCRIPTION 
The meta description tag exists as a short description of a page's content. Search engines do not use the keywords or phrases in this tag for rankings, but meta descriptions are the primary source for the snippet of text displayed beneath a listing in the results.

Meta descriptions can be any length, but search engines generally will cut snippets longer than 160 characters, so it's generally wise to stay within in these limits.

SEO:  https://moz.com/beginners-guide-to-seo/basics-of-search-engine-friendly-design-and-development
-->
<meta name="description" 
      content="Welcome to Coffee Buzz. We are dedicated to filling all your caffeine needs through our quality coffees and teas.">
<meta name="keywords" content="Coffee, tea, lounge, live music, Moncton, New Brunswick">
<!-- meta keywords not important anymore -->

<!-- mwilliams:  Added for Responsive Design:
<meta name="viewport" content="width=device-width, initial-scale=1">

	- Use the meta viewport tag to control the width and scaling of the browser's viewport.
	- Include width=device-width to match the screen's width in device-independent pixels.
	- Include initial-scale=1 to establish a 1:1 relationship between CSS pixels and device-independent pixels.
	- Ensure your page is accessible by not disabling user scaling 
	  maximum-scale=1 would disable scaling.
	  
	  Note:  Not all mobile browsers handle orientation changes in the same way. For example, Mobile Safari often just zooms the page when changing from portrait to landscape, instead of laying out the page as it would if originally loaded in landscape. If web developers want their scale settings to remain consistent when switching orientations on the iPhone, they must add a maximum-scale value to prevent this zooming, which has the sometimes-unwanted side effect of preventing users from zooming in:
	

	https://css-tricks.com/snippets/html/responsive-meta-tag/
-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>CoffeeBuzz Menu - Moncton, New Brunswick</title>
<!-- Title Tag 
	- Is meant to be an accurate, concise description of a page's content
	- Important part of search engine optimization:  create descriptive, keyword-laden (laden->heavily loaded) title tags for search engine ranking
	- keep your titles under 60 characters
	  https://moz.com/learn/seo/on-site-seo
-->
<!-- Chapter 13:  Fonts -->
<link href="//fonts.googleapis.com/css?family=Capriola&subset=latin" rel="stylesheet" type="text/css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css" rel="stylesheet" type="text/css">
<link href="../css/chapter14.css" rel="stylesheet" type="text/css">

</head>

<body>
	<!-- Semantics:  A semantic element clearly describes its meaning to both the browser and the developer.
	    HTML5 offers new semantic elements to define different parts of a web page:  
		<article>
		<aside>
		<details>
		<figcaption>
		<figure>
		<footer>
		<header>
		<main>
		<mark>
		<nav>
		<section>
		<summary>
		<time>
	-->
	<!-- header
         The header tag (element) is typically used to 
         group a set of h1-h6 elements to mark up a page's 
         title with its subtitle or tagline.  Common
         contents include the site name, company name, 
         logo, etc...     
    	
    -->

	<header>
		<h1>Coffee Buzz</h1>
		<p>Provide all the caffeine that you need to power your life</p>
	</header>	
	
	<!-- navigation bar
         The nav tag (element) represents the navigation
         for a document.  It defines a set of important
         navigational links to other documents or parts
         within the current document.
     -->
	<nav class="row">
		<ul>
			<li><a href="index.html"  title="Back home">HOME</a></li>
			<li class="active">
				<a href="#">MENU</a>
				<!-- Dropdown menu 
				<ul>
					<li><a href="#">COFFEE</a></li>
					<li><a href="#">TEA</a></li>
					<li><a href="#">DONUTS</a></li>
					<li><a href="#">MUFFINS</a></li>
				</ul>mwilliams:  chap9 remove submenu -->
			</li>
			<li><a href="" title="How to contact us">CONTACT</a></li>
			<li><a href="" title="More about Coffeebuzz">ABOUT</a></li>
		</ul>		
	</nav>
	
	<!-- MAIN PAGE CONTENT STARTS HERE -->	
	
    <!-- Main
             The Main tag (element) represents the main content area of a document includes content that is unique to that document and excludes content that is repeated across a set of documents such as site navigation links, copyright information, site logos and banners and search forms (unless the document or application???s main function is that of a search form).
			There must not be more than one visible main element in a document
        --> 
    <main class="row"> 
    	<!-- Chapter 6:  Layouts -->
    	<div id="content-wrapper">
		  <!-- Section
				 The section tag (element) represents a generic
				 document or application section.  It is not a
				 generic element like the div.  When an element
				 is needed for styling purposes or as a 
				 convenience for scripting, it is encouraged to
				 use the div tag instead.
			-->  
			<section>	
				<hr>
				<h2><strong>Thank You</strong></h2>
				<hr>
				<div id="careers">
					<p>
						The following information was received on:
						<strong>
							<%   
								Response.Write(Now())
							%>
						</strong>						
					</p>
					<table>
						<thead>
							<tr>
								<th>Description</th>
								<th>Value Entered</th>
							</tr>
						</thead>
						<tbody>
<%
 For Each key as String in Request.Form.Keys
	'Ignore the submit button
	If (Not key="send")
		'Display every key:value pair in HTML table
	   Response.Write("<tr><td>" & key & "</td><td>" & 
	                  Request.Form(key) & "</td></tr>")
	End If
 Next
%>
							
							
						</tbody>						
					</table>
					
				</div>
			</section>

			
 		</div>	

		<!-- Sidebar Navigation Menu
			The Aside tag (element) represents a section of a 
			page consisting of content that is related to the
			content around the aside element, and which would
			be considered separate from that content.
		 -->
		 
		 <!-- Chapter 6:  Layouts -->
		<aside>			
			<!--<h2>To learn more</h2>-->
			<ul>
				<li>To learn more</li>
				<li><a href="" title="Check out our music">Lounge</a></li>
				<li><a href="" title="Careers at CoffeeBuzz">Careers</a></li>
				<li><a href="" title="Read our newsletter">Newsletter</a></li>
				<li><a href="" title="Learn more about fair trade">Fair Trade</a></li>				
			</ul>	
			<div class="promo">
				<h3>Pay with your phone</h3>
				<p>Download our app to pay using your mobile phone</p>
				<p>
			        <a href="">
						<img src="../img/apple_pay-dark.png" 
							 alt="Download iphone app">
				    </a>
				</p>
				<p>
			    	<a href="">			    		
			    		<img src="../img/google-play-dark.png" 
				             alt="Download android app">
			    	</a>			        	
				</p>
				
			</div>
			
			
		</aside>
			
	</main>
  	
  	<!-- Footer 
	 The footer tag (element) represents the "footer" of 
     a document or section of a document.  Typically the 
     footer contains the copyright info a contact address,
     links to terms of service, and links ot other 
     related documents.
	-->
	<footer>
   		<p><em>Copyright &copy;2017 CoffeeBuzz</em></p>
	</footer>

</body>
</html>
