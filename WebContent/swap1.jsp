<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="favicon.ico">
  <link href="bootstrap.min.css" rel="stylesheet">
    <link href="vzbootstrap.min.css" rel="stylesheet">
    <link href="vz-global-header.min.css" rel="stylesheet">
    <link href="vz-search.min.css" rel="stylesheet">
    <link href="vz-stocks.min.css" rel="stylesheet">
    
    <title>IPM SSH Home</title>
    <link rel="stylesheet" href="calendarview.css">
    <style>
    .container{
	margin-right:auto;
	margin-left:0px;
	padding-left:15px;
	padding-right:15px
}

header .navbar .navbar-collapse .nav.navbar-nav > li
{
font-size: 16px;
padding: 20px 20px 2px;
}

header .navbar .navbar-header .navbar-brand{min-height:75px;width:200px;background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKMAAAAlCAYAAAAuhVlFAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABktJREFUeNrsXOtx4zYQpjzMr2RG7EBMBabTgOkKrA6OV4GZCo5XQegKTFUQuYKjC7gL1QHdgTSTf/nBYO+WHhwMLJYPiaaMncHoBeKxWHy73wL2omkaz4mTU8u3X34LxEsqfVX7Ti1OJhIwxE/S548Lh4xOJkLFWpQlfnUQJbxwqnEyESoupc/5H//9u3/3xrhYLGJRGqLEznZGl0R6D6iYwxuHjE5O7aLBEFfSVwWgojNGJ1NIpnzO2zfOGJ1MiYobgYq1M0YnU8eKr1DSGaOTU6EiEMFr6atHGRVBXNLb8yB4frL87uSIsWIrkye9DamTSozLGcEP/YTiJTylfjRrMqg/gYqRePlH+upJoOKrdfdFxyXRTikGkVkGnmhigRcRz8eGZ9ai3BLt7oD2Q6EUYRl/Kp6tsF6E44xaxBO/rfH73NaGpZ+uAoubWoyh1dHSUOdZvGxRPxXRFjm/dn3Q6GGtPxjaAe+RifqlZGTQfyBVW7dpGlWHFpR8EWiwMRRYMI8qlucrpS5MvCbqa8cAkyT6p56NsU6u+10aE6eNZsRSGuYChlP2aA/WIDS0Sc4P6ySoZ05fedv2V//XTJRGKpnav/guVOrUprW8wImYZCl2xJrYdQGFbohsMhp+Uag9RwAZ/hbP5z1dDozhbgbuOEFXdt3jcViDilorol945sGEwBq5k9YCXg8EAupQkPS0AXcnaHbd2vJsIO28MRAl74iMJQMVJkfGEfXTqF6EMb99z35iRL5cQb5EQsWAi4rfkRHjsQ1hrOuevz1C2xj/PIwEIHcdz4qvZ4CI6xH1890bYZzYxfP0kdTAijMCKUnvdiHFjSZZEZOjjHGrumqDfBblShjuQrz+jp8PHNd/Bkw5YMwHiMqfotxgubfoZ2lb9JHkFsaPuUIZzFZw0qK5PHuwzdVHRrUVDR+IXQJoVGlYGrWrthgHUTHilcwExXuYWCae2yqpAHVzgCvoa5RPPZ+7YdZLTIxUs6FSiw43yOZlhlpizAY6ujR5BPAgMvNlyGcMg/bIrFNGrN0SLpWFp5iOenVNjGxNii0KLiumGGrL7rBORdTJLCw9s7XfIZYDJSR92GYbG3EKo60GUzFtfSqzULcxN8G8G8YacMaU9MiUNLhR2viwVOLDvfI+sOqvAxkJlYFSikxwZ1jJDaHs0EY+mMYIhhgNMKCYaYgRgwwUHYwpZfRZ2HTMmF85wOAzyRhjxRjlUnB06EsIyXHVhZQgNbnfA7hQS5oB+klFnUGnBEw3lFJJ4ZFiv9ZdUS53J8aRKPr0GDG3rc4Hixv1mCGDzmtW3DUSLrgUceKTgTRmnDZ8zcDuCLJSdCAukSXI/jTQBloDIIP/AbFlVxJCGqLG+EJL+FRzTnIYOrLVqUdUR64xxo16IcLGpjlM9bYjiz62BIw65QkMsSSIRMuGY82RZjSUZDEMNvBOKMLotjjfzqj4ChkRlp9NLhhdb0nk78BFb723I/WR299aDPGASej3dOkjkbzAnouKOjfdKphy1cEbQEVOzHXsHGHh0Un1AyKiyU1SBhrO1RIhduzrkXxDQNvXGAsmKu08/TlmF9lPaIg5I5doI06VZz7XXzHHYduQ9ZwM2TcwKJOrXhKI9KywW2ohLr2Z3lnERL4tGfyRQZwqSz9rRsgTMfoI5qLbC4IVUUzY6qIRFahjqzVj4SP8u2ZdCSYyRNs58j2TwdtcGecGTmrJJFSz2ul9Es6GEnVMygIqhgMSrhEj6Z2NcGoSM8fzU1KbmSjfej0T7h59QvUyd29gUn+ofrsU35QywJvWl0ybNu3CjIitAGErdEelJhbavrFdzwnKww43wlP0QNR9UDiISGWkRY+g/tMkHXkqvJmJbyEjf3VIcZiM+p6IscAgv2CMWktMcjXAPR1LOFetulxZg+NQuPTwSBgk9PmAhKnq0EfOTJq/fTfdw1VT7jbw6AsTXUsxphvxprlcK7c7tn7KMc/eT+mmLwgjhZ3FOQnYUbsQGXOM6ZyhslHOd2cvI+tnxyQ+s2LTurxh7zqSwh8HjPX+3AzxCPqJ5nzaYzNG7s0RlsLhT0O9H5dUu1xwhQW6ov6081wMcoB+bs5BP5P9ET9eQ4sxZRJpkrUVxj+19w4F9bNG3YTKzzWy+7PSz/8CDAAWAyg4IYTS5gAAAABJRU5ErkJggg==);background-position:15px center;background-size:auto;margin-left:20px;margin-top:20px;}
      body {
        font-family: Trebuchet MS;
      }
      div.calendar {
        max-width: 240px;
        margin-left: auto;
        margin-right: auto;
      }
      div.calendar table {
        width: 100%;
      }
      div.dateField {
        width: 140px;
        padding: 6px;
        -webkit-border-radius: 6px;
        -moz-border-radius: 6px;
        color: #555;
        background-color: white;
        margin-left: auto;
        margin-right: auto;
        text-align: center;
      }
      div#popupDateField:hover {
        background-color: #cde;
        cursor: pointer;
      }
      table.hovertable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}
table.hovertable th {
	background-color:#c3dde0;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
table.hovertable tr {
	background-color:#d4e3e5;
}
table.hovertable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
    </style>
    <script src="prototype.js"></script>
    <script src="calendarview.js"></script>

</head>
<body>
<header class="vz-global-header">
        <nav class="navbar navbar-default" role="navigation">
        
          <div class="container">

                        <!-- mega menu starts -->
            <div class="navbar-header">
                <button class="navbar-toggle collapsed" type="button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                <!--button type="button" class="search-toggle"></button>
                <  a class="profile-toggle collapsed visible-xs" href="#" data-target="#profile-dropdown" data-toggle="collapse" aria-expanded="false">
                  <  img alt="User's Profile Avatar" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAMAAABg3Am1AAAAWlBMVEXHyMrJyszMzc/P0NLLzM6wsrSsrrC2uLqfoaOjpaebnaC6vL6ztbemqKrR0tSWmJqpq63W19jT1NXOz9GHiYzU1deQkpWMjpGYmpyTlZjZ2tuDhYepq67Cw8WqqozrAAABu0lEQVRIx8WUSYKDIBBFFYOgDEYckNjc/5otELvCkGnVb5XFf/4qNFT/Qf3Ih/FL4APFhy01+77PPUdBehOv6H6iGUKglOPI6v0BjEAp5RGq9RxBpkMpGv7xaOrnGH2ZplBSzrM5pWsaMLJ8I3TKisCIBJ9HOofIYIAA+YatOVdZMO55iQsCVeo0ogKXl8IUWJTvgAoosEMJskBFXKBWUxJmqxRUQIGUTA9bAS3cUKECjsgVYL31BTRd/FDnQcFE3PQlTDeGLUDwEynFhp4WGMQhKD/TXbgEYam3orCR0c0ES5wrLGNHuxxK5RhmyoXqEHLI7akwViKHjC+EG7umtLfbK6H5SbGZAKfkDNwmqCMPpxS/BydUSZ7dC4IQv2kvjDimcUL2ps8lfEWUDwXRtwRLuIrD4I/4Dcbka4WZvCE4+aNfQv5xIqgIQ8l1ICdCM5dP/3FQ4Qy+rhtnHnH8DHkoSCsUGowxg8CMt5s5IEceCkA4jYkOMX2l5IubrO62lN5CPr1ba077Argu38YWd/QJLcvyjPx0rxCYVYDlV/EecNj1U3h4fvs5voPgL/AC/wLrhG9wAvsGW/0CxKlP74i8jegAAAAASUVORK5CYII=">
                </a-->
                <a class="navbar-brand" href="#"><span></span></a>
                <div class="row">
                <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li ><a href="events.jsp">Home</a></li>
              <li><a href="generateShift.jsp">Generate Schedule</a></li>
              <li class="active"><a href="swap1.jsp">Swap shifts</a></li>
             
            </ul>
          </div><!--/.nav-collapse -->
          
            </div>
            </div>
            <!-- mobile navbar header ends -->
            <!-- mega menu ends --> 
		</div>
		</nav>
		</header>
<form name="f1" class="swap-form"  method="post" action="swap.jsp">
	
		<div class="header">
		<h1>Swap request</h1>
		<span>Enter the required details to swap</span>
		</div>
	
		<div class="content">
		Date<input name="date" type="text" class="input date">
		User ID<input name="userid" type="text" class="input userid">
		Shift ID<input name="shiftid" type="text" class="input shiftid">
				
		</div>

		<div class="footer">
		<input type="submit" name="submit" value="Submit" class="button" />
		
		</div>
	
	</form>
	<!-- Global Footer -->
	<br>
	<br>
    <footer class="container disclaimer padding-left-right-zero">
        <div class="row">
            <div class="col-md-8 col-xs-8">
                <p>Proprietary and Confidential. Not for disclosure outside of Verizon.</p>
            </div>
            <div class="col-md-4 col-xs-4">
                <p class="pull-right pull-mobile-none">Copyright &copy;
                    <script>document.write(new Date().getFullYear());</script>
                </p>
            </div>
        </div>
    </footer>

  <script src="../scripts/jquery.min.js"></script>
  <script src="../scripts/bootstrap.min.js"></script>
  <script src="../scripts/vzbootstrap.min.js"></script>
</body>
</html>