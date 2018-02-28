html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}

article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
    display: block;
}

body {
    line-height: 1;
}

ol, ul {
    list-style: none;
}

blockquote, q {
    quotes: none;
}

blockquote:before, blockquote:after,
q:before, q:after {
    content: '';
    content: none;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
}

.about {
    margin: 70px auto 40px;
    padding: 8px;
    width: 260px;
    font: 10px/18px 'Lucida Grande', Arial, sans-serif;
    color: #666;
    text-align: center;
    text-shadow: 0 1px rgba(255, 255, 255, 0.25);
    background: #eee;
    background: rgba(250, 250, 250, 0.8);
    border-radius: 4px;
    background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.1));
    background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.1));
    background-image: -o-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.1));
    background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.1));
    -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), inset 0 0 0 1px rgba(255, 255, 255, 0.1), 0 0 6px rgba(0, 0, 0, 0.2);
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), inset 0 0 0 1px rgba(255, 255, 255, 0.1), 0 0 6px rgba(0, 0, 0, 0.2);
}
.about a {
    color: #333;
    text-decoration: none;
    border-radius: 2px;
    -webkit-transition: background 0.1s;
    -moz-transition: background 0.1s;
    -o-transition: background 0.1s;
    transition: background 0.1s;
}
.about a:hover {
    text-decoration: none;
    background: #fafafa;
    background: rgba(255, 255, 255, 0.7);
}

.about-links {
    height: 30px;
}
.about-links > a {
    float: left;
    width: 50%;
    line-height: 30px;
    font-size: 12px;
}

.about-author {
    margin-top: 5px;
}
.about-author > a {
    padding: 1px 3px;
    margin: 0 -1px;
}

/*
 * Copyright (c) 2012-2013 Thibaut Courouble
 * http://www.cssflow.com
 *
 * Licensed under the MIT License:
 * http://www.opensource.org/licenses/mit-license.php
 */
body {
    font: 13px/20px 'Lucida Grande', Tahoma, Verdana, sans-serif;
    color: #404040;
    background: #0ca3d2;
}

.container {
    margin: 110px auto;
    width: 640px;
}

.login {
    position: relative;
    margin: 0 auto;
    padding: 20px 20px 20px;
    width: 450px;
    background: white;
    border-radius: 3px;
    -webkit-box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
}
.login:before {
    content: '';
    position: absolute;
    top: -2px;
    right: -8px;
    bottom: -8px;
    left: -8px;
    z-index: -1;
    background: rgba(0, 0, 0, 0.08);
    border-radius: 4px;
}
.login h1 {
    margin: -20px -20px 21px;
    line-height: 40px;
    font-size: 20px;
    font-weight: bold;
    color: #345678;
    text-align: center;
    text-shadow: 0 1px white;
    background: #cfe9ff;
    border-bottom: 1px solid #cfcfcf;
    border-radius: 3px 3px 0 0;
    background-image: -webkit-linear-gradient(top, whiteffd, #eef2f5);
    background-image: -moz-linear-gradient(top, whiteffd, #eef2f5);
    background-image: -o-linear-gradient(top, whiteffd, #eef2f5);
    background-image: linear-gradient(to bottom, whiteffd, #eef2f5);
    -webkit-box-shadow: 0 1px whitesmoke;
    box-shadow: 0 1px whitesmoke;
}
.login p {
    margin: 20px 0 0;
}
.login p:first-child {
    margin-top: 0;
}
.login input[type=text], .login input[type=password] {
    width: 250px;
}
.login p.remember_me {
    float: left;
    line-height: 31px;
}
.login p.remember_me label {
    font-size: 12px;
    color: #777;
    cursor: pointer;
}
.login p.remember_me input {
    position: relative;
    bottom: 1px;
    margin-right: 4px;
    vertical-align: middle;
}
.login p.submit {
    text-align: center;
}

.login-help {
    margin: 20px 0;
    font-size: 11px;
    color: white;
    text-align: center;
    text-shadow: 0 1px #2a85a1;
}
.login-help a {
    color: #cce7fa;
    text-decoration: none;
}
.login-help a:hover {
    text-decoration: underline;
}

:-moz-placeholder {
    color: #c9c9c9 !important;
    font-size: 13px;
}

::-webkit-input-placeholder {
    color: #ccc;
    font-size: 13px;
}

input {
    font-family: 'Lucida Grande', Tahoma, Verdana, sans-serif;
    font-size: 14px;
}

input[type=text], input[type=password] {
    margin: 5px;
    padding: 0 10px;
    width: 200px;
    height: 34px;
    color: #404040;
    background: white;
    border: 1px solid;
    border-color: #c4c4c4 #d1d1d1 #d4d4d4;
    border-radius: 2px;
    outline: 5px solid #eff4f7;
    -moz-outline-radius: 3px;
    -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
    box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
}
input[type=text]:focus, input[type=password]:focus {
    border-color: #7dc9e2;
    outline-color: #dceefc;
    outline-offset: 0;
}


.lt-ie9 input[type=text], .lt-ie9 input[type=password] {
    line-height: 34px;
}

table {
    border: 1px solid grey;
    border-collapse: collapse;
    padding: 5px;
    width:100%;
}

table tr:nth-child(odd) {
    background-color: #f2f2f2;
}

table tr:nth-child(even) {
    background-color: #ffffff;
}

.nodatablock {
    position: relative;
    margin: 0 auto;
    padding: 20px 20px 20px;
    width: 800px;
    background: white;
    border-radius: 1px;
    -webkit-box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
}

footer.navbar-default.navbar-fixed-bottom
 {
    background-repeat: repeat;
    background-color: #0b333f;
    border-color: #f0bf00;
    background: url("../images/download.png");
      color:white;
      padding:1em 0;
 }
 footer.navbar-default.navbar-fixed-bottom p
 {
      margin:0;
 }

/* Banner related  --*/
#fw-banner {
    display: block;
    width: 100%;
    position: relative;
    height: 60px;
    z-index: 1000; }
#fw-banner #fw-logo {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    position: relative;
    height: inherit;
    width: 200px;
    float: left;
    overflow: hidden; }
#fw-banner #fw-logo div {
    display: block;
    position: relative;
    height: 300%;
    width: 300%;
    font-size: 0px;
    top: -28px;
    left: -45px;
    overflow: hidden;
    -moz-transform: scale(0.7);
    -ms-transform: scale(0.7);
    -webkit-transform: scale(0.7);
    transform: scale(0.7); }
#fw-banner #fw-logo div:before {
    display: inline-block;
    content: url("//www.static-cisco.com/web/fw/i/responsive-sprite-v1.png");
    margin: -199px 0 0 -12px; }
.cec-login #fw-banner #fw-logo div:before {
    margin-left: -10px; }


/* ----------------------------------------------------------------------------------------------------------
04 Navbar ------------------------------------------------------------
---------------------------------------------------------------------------------------------------------- */

.navbar-fixed-top .container1 {
    /* Uncomment to make nav expand full width */
    /*	width: auto; */
}
.navbar .brand {
    margin-left:0;
    padding: 0;
    margin-top: 1.05em;
}
.navbar .brand a {
    padding: 0;
    color: #fff;
    font-size: 1.75em;
    margin-left: 0;
    font-weight: normal;
    font-family: 'Patua One', cursive;
}
.navbar .brand a:hover {
    text-decoration: none;
    color:#f0bf00;
    transition: color .15s linear;
    -webkit-transition: color .15s linear;
    -moz-transition: color .15s linear;
}
.navbar .brand a:focus {
    outline: none;
}
.navbar-inner {
    min-height: 4.75em;
}
.navbar-inverse .navbar-inner {
    background-repeat: repeat;
    background-color: #0b333f;
    border-color: #f0bf00;
    background: url("../images/download.png");
}
.navbar-wrapper {
    overflow:hidden;/* No fixed height, will break collapsible nav */
}
#menu-main {
    margin-top: 1.125em;
}
ul#menu-main > li > a {
    font-family: 'Patua One', cursive;
    font-weight: normal;
    font-size: 1em;
    color: #fff;
}
ul#menu-main > li > a:hover {
    background: #f0bf00;
    padding: 9px 15px;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
}
.navbar-inverse .brand, .navbar-inverse .nav > li > a {
    text-shadow: none;
}



#toTop{
	position: fixed;
	bottom: 95px;
	right: 30px;
	cursor: pointer;
	display: none;
}
#toTop .fa {margin-right: 5px;}

.loader{
	position: fixed;
	z-index: 3;
	margin: 0 auto;
	left: 0;
	right: 0;
	top: 50%;
	margin-top: -30px;
	width: 60px;
	height: 60px;
  list-style: none;
}

@-webkit-keyframes 'loadbars' {
	0%{
		height: 10px;
		margin-top: 25px;
	}
	50%{
		height:50px;
		margin-top: 0px;
	}
	100%{
		height: 10px;
		margin-top: 25px;
	}
}

li{
		background-color: #FFFFFF;
		width: 10px;
		height: 10px;
		float: right;
		margin-right: 5px;
    box-shadow: 0px 100px 20px rgba(0,0,0,0.2);
	}
li:first-child{
			-webkit-animation: loadbars 0.6s cubic-bezier(0.645,0.045,0.355,1) infinite 0s;
		}
li:nth-child(2){
			-webkit-animation: loadbars 0.6s ease-in-out infinite -0.2s;
		}
	li:nth-child(3){
			-webkit-animation: loadbars 0.6s ease-in-out infinite -0.4s;
}