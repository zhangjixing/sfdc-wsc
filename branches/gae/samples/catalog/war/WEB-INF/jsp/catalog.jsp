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
				<li class="sel"><a href="catalog.html">Our Catalog</a></li>
				<li><a href="#">Partners</a></li>
				<li>Contact Us</li>
			</ul>
			<img style="margin-left:40px" src="http://code.google.com/appengine/images/appengine-silver-120x30.gif"/>
		</div>
		<div id="content">
			<div class="contentBlock">
				<div class="headBar">
					<img src="images/chair_small.jpg" align="left"/>
					<div class="head">&nbsp;Product Catalog</div>
				</div>
				<div class="contentBody">
					These are the items currently in our online product catalog. We offer free 
					shipping on all these items. If you're interested in learning more about these
					items, click the I'm Interested button next to the coorsponding item below.
					<p/>
					<table cellpadding="5">
						<c:forEach items="${entries}" var="entry" varStatus="status">
							<c:if test="${status.count % 2 == 1}">
								<tr>
							</c:if>
							<td align="middle"><img src="${entry.imageUrl}"></td>
							<td class="contentBody" width="50%">
								${entry.description}
								<p/>
								<a href="moreinfo.html?id=${entry.id}">More Info</a> 
								<a href="#"><img src="images/arrow.gif" border="0"/></a>
							</td>
							<c:if test="${status.count % 2 == 0}">
								</tr>
							</c:if>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>