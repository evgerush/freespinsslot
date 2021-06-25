/**************************************************************************************
T1020 Slime
v20130925

Update:
4/11/04 - UI optimizations for non-caf networks

***************************************************************************************/

/* Reset
----------------------------------------------------------------------------------------------------*/	

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
	vertical-align: baseline;}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;}
body { line-height: 1;}
ol, ul { list-style: none;}
blockquote, q {	quotes: none;}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;}
table {border-collapse: collapse;border-spacing: 0;}


/* Defaults *
----------------------------------------------------------------------------------------------------*/	

body {background:#666;font-family:Arial;}
a {color:#C9EC6A;
   outline:0;}
a:hover {color:#E57921;}
a img,
a:hover img {border:none;}




/* Clear Floats
----------------------------------------------------------------------------------------------------*/	

.clearfix:after {visibility:hidden;
                 display:block;
                 font-size:0;
                 content:' ';
                 clear:both;             
                 height:0;}
.clearfix {display:inline-block;}
* html .clearfix {height:1%;}
.clearfix {display:block;}


/* Layout 
----------------------------------------------------------------------------------------------------*/	

body {margin-top:0;}

.customHdr {}

.wrapper {}

.header {position:relative;
         margin:0;
         padding:25px;}
    
    .pageHeader {float:left;}

    .searchBox {text-align:right;}

.content {margin:0;
          padding:25px;
          border-width:1px 0;
          border-style:solid;
          border-color:#494949;
          box-shadow:0 10px 20px #424242;}
          
    
    /* Note: Fixed and fluid columns uses the more intuitive table-cell solution but lack support on IE7 */        
    
    /* lander links */
    .colFluidLander  {
        margin:auto;             
        width:65%;
        padding:30px 10%;   
        vertical-align:top;
        line-height:32px;        
        background-color:#363636;
        border:1px solid #666666;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        border-radius: 10px;
        box-shadow:0 0 5px 5px #424242;}
        
        

    /* results > left column */
    .colFixed {
        float:left;    
        width:250px;
        margin:0 35px 25px 0;
        padding:20px;  
        vertical-align:top;
        line-height:32px;        
        background-color:#363636;
        border:1px solid #666666;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        border-radius: 10px;
        box-shadow:0 0 5px 5px #424242;
        }          
  
    
    /* results > right column */
    .colFluid   {        
        float:left;        
        width:50%;    
        padding-left:0;
        vertical-align:top;}    
    

.footer {}

.customFtr {}



/* Modules
----------------------------------------------------------------------------------------------------*/	


/* Page Header */
.pageHeader h1 {display:inline-block;
                color:#999;
                font-family:Verdana,Arial;
                font-size:1.7em;             
                font-weight:bold;
                text-decoration:none;
                text-transform:lowercase;}


/* Search Box */
.searchBox {display:inline-block;               
            float:right;
            position:relative;
            top:10px;}
    
    .sb_text,
    .sb_button {vertical-align:middle;}

    .sb_text {width:200px;
              height:22px;
              padding:0 3px;
              border:1px solid #333;
              color:#666;
              font-size:16px;}
              
    .sb_button {width:70px;
				height:22px;														  		   
				background:transparent url(http://rte-sjl.nuseek.com/templates/t1020/images/btn-blacklime.png) no-repeat;
			    border:0;
			    cursor:pointer;}


/* Search Links Lander */
.rs .label {display:block;
            margin-bottom:5px;
            color:#999;
            font-size:18px;
            font-weight:normal;
            text-decoration:none;}
.rs ul {float:left;}
.rs li {float:left;
        width:50%;}
.rs li a {display:block;
          background:transparent url(http://rte-sjl.nuseek.com/templates/t1020/images/blt-greenarrow.png) no-repeat 0 5px;
          padding:0 0 20px 30px;
          padding-left:30px;          
          color:#9fd801;
          font-size:24px;
          font-weight:bold;          
          text-decoration:none;}
.rs li a:hover {color:#E57921;
                text-decoration:underline;}



/* Search Links Result */
.rsSB .label {color:#aaa;
              font-size:14px;
              font-weight:bold;}
.rsSB li a {display:block;
            margin-bottom:3px;
            color:#9fd801;
            font-size:22px;
            text-decoration:none;}
.rsSB li a:hover {color:#e57921;}            
            


   
/* Ads */

.results {float:left;}

.results li {margin:0 0 15px;
             padding-left:28px;
		     background:transparent url(http://rte-sjl.nuseek.com/templates/t1020/images/blt-greenarrow.png) no-repeat 0 2px;}
		     
.results h2 {margin:5px 0 20px;
             color:#999;
             font-size:16px;
             text-decoration:none;
             cursor:text;}
             
.results h2 a {color:#999;
               text-decoration:none;}

.title {display:inline;
        margin-right:15px;
        color:#9FD801;
        font-size:24px;
        font-weight:bold;
        text-decoration:none;}
.title:hover {text-decoration:underline;}

.abstract {margin:2px 0 0;
           color:#c1c1c1;
           font-size:16px;}  

.url {margin-top:5px;
      color:#C9EC6A;
      font-size:16px;
      line-height:24px;
      text-decoration:none;}
.url:hover {text-decoration:underline;}
.url .icon {position:relative;top:3px;width:16px;height:16px;padding-right:3px;}
     	
.prev-next {margin:25px auto 15px;}     		  
.prev-next a {margin:20px; text-decoration:underline; font-weight:bold; font-size:14px;}
.prevDisable, 
.nextDisable {margin:20px; text-decoration:none; color:#999999; font-weight:bold; font-size:14px;}



/* Custom Content
----------------------------------------------------------------------------------------------------*/	

.customHdr {margin:0;
            padding:10px;
            background:linear-gradient(to bottom, #666666 0px, #010101 100%) repeat scroll 0 0 transparent;
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#666666', endColorstr='#010101');
            border-bottom:1px solid #CCC;                     
            text-align:center;
            color:#eee;font:14px;}            
.customHdr a {font-family:Arial;text-decoration:none;}
/* .customHdr a:hover {border-bottom:1px solid #999;} /* Control thickness */
.customHdr a.tag1 {margin-right:5px;color:#eee;font-size:15px;font-weight:bold;text-transform:uppercase;}
.customHdr a.tag2 {color:#eee;font:14px;}
.customHdr b {font-weight:bold;}
              
.customFtr {margin:40px auto 0;
            text-align:center;
            color:#fff;
            font-size:80%;}


/* Legal - gets displayed based on Ad Network */
.legal {margin:30px auto 10px;text-align:center;}
.legal a {color:#eee;font-size:11px;text-decoration:underline;}

