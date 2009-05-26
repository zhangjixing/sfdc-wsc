<%@ include file="/WEB-INF/jsp/include.jsp" %>
<html>
<head>
<link type="text/css" rel="stylesheet" href="styles.css"/>
</head>
<body>
	<div id="canvas">
		<div id="topnav"/>
			<img src="images/point.gif"/> <a href="index.html">home</a> &nbsp;&nbsp;
			<img src="images/point.gif"/> <a href="#">support</a> &nbsp;&nbsp;
			<img src="images/point.gif"/> <a href="#">search</a> 
		</div>
		<div id="sign">
			<img src="images/sign.png"/>
		</div>
		<div id="leftnav">
			<ul>
				<li><a href="#">About</a></li>
				<li><a href="#">Brands</a></li>
				<li><a href="catalog.html">Our Catalog</a></li>
				<li><a href="#">Partners</a></li>
				<li>Contact Us</li>
			</ul>
			<img style="margin-left:40px" src="http://code.google.com/appengine/images/appengine-silver-120x30.gif"/>
		</div>
		<div id="content">
			<div class="contentBlock">
				<div class="headBar">
					<img src="images/chair_small.jpg" align="left"/>
					<div class="head">&nbsp;Request More Info</div>
				</div>
				<div class="contentBody">
					You've indicated you'd like to request more information on the following product:
					<p/>
					<table width="240" align="center">
						<td align="middle"><img src="${entry.imageUrl}"></td>
						<td class="contentBody" width="50%">
							${entry.description}
						</td>
					</table>
					<p/>
					Please provide your contact information so we can get back to you:<br/>
					&nbsp;
					<p/>
					<form method="post" action="/inquiry">
						Your Name:<br/>
						<input type="text" name="leadName" size="35"/>
						<input type="hidden" name="productId" value="${entry.id}"/>
						<p/>
						Email:<br/>
						<input type="text" name="leadEmail" size="35"/>
						<p/>
						What would you like to receive?
						<p/>
						<input type="checkbox" name="brochure">Product brochure <br/>
						<input type="checkbox" name="pricing">Latest pricing <br/>
						<input type="checkbox" name="reviews">Customer reviews <br/>
						&nbsp;
						<p/>						
						<input type="submit" value="Request"/>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>