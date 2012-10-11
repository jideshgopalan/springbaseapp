<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <% String ember_assets_path = request.getContextPath() + "/resources/ember"; %>
	<% String bootstrap_assets_path = request.getContextPath() + "/resources/ember/bootstrap"; %>
	

    <!-- Le styles -->
    <link href="<%=bootstrap_assets_path%>/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="<%=bootstrap_assets_path%>/css/bootstrap-responsive.css" rel="stylesheet" />
    <link href="<%=ember_assets_path%>/css/application.css" rel="stylesheet" />

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="<%=bootstrap_assets_path%>/ico/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=bootstrap_assets_path%>/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=bootstrap_assets_path%>/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72"  href="<%=bootstrap_assets_path%>/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="<%=bootstrap_assets_path%>/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>
	
	<script type="text/x-handlebars" data-template-name="application">
     <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Project name</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Logged in as <a href="#" class="navbar-link">Username</a>
            </p>
            <ul class="nav">
             	<li class="home active" {{bindAttr class="isHome:active"}}><a {{action "doHome"}}>Home</a></li>
                <li class="sections" {{bindAttr class="isSections:active"}}><a {{action "doSections"}}>Sections</a></li>
                <li class="items" {{bindAttr class="isItems:active"}}><a {{action "doItems"}}>Items</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

	 <div class="container-fluid">
		  <div class="row-fluid">
 	 		{{outlet}}
		   </div><!--/row-->	
	      <hr>
	      <footer>
    	    <p>&copy; Company 2012</p>
    	  </footer>
    </div><!--/.fluid-container-->
    </script>
    
    <script type="text/x-handlebars" data-template-name="home">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sidebar</li>
              <li class="active"><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Sidebar</li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span6">
          <div class="hero-unit">
            <h1>Hello, world!</h1>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
          </div>
          <div class="row-fluid">
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
			<div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
          </div><!--/row-->
        </div><!--/span-->
 		<div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sidebar</li>
              <li class="active"><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
    </script>
    
    <script type="text/x-handlebars" data-template-name="sections">
		<div class="span12">
				<div class="content">
        			<div class="page-header">
  						<h3>Reports <small>(Malad West)</small></h3>
				 			 <ul class="nav nav-tabs">
					    	<li class="active"><a href="/branches/70/reports/outstanding_fees">Outstanding fees</a></li>
				  			</ul>
					</div>
				</div>
				 <div class="container">
					 <header class="jumbotron subhead">
        					<h1>Layout Nesting</h1>
					        <p>Views can be dynamically nested using <code>&#123;&#123;outlet&#125;&#125;</code> handlebars helpers.</p>
        					<div class="subnav">
					          	<ul class ="nav nav-pills">
            						<li class="sectionA" {{bindAttr class="isSectionA:active"}}><a {{action "doSectionA"}}>Section A</a></li>
						            <li class="sectionB" {{bindAttr class="isSectionB:active"}}><a {{action "doSectionB"}}>Section B</a></li>
            						<li class="sectionC" {{bindAttr class="isSectionC:active"}}><a {{action "doSectionC"}}>Section C</a></li>
						            <li class="sectionD" {{bindAttr class="isSectionD:active"}}><a {{action "doSectionD"}}>Section D</a></li>
          						</ul>
        					</div>
      				</header>
      				{{outlet}}
				</div>
		</div><!--/span3-->
    </script>

	<script type="text/x-handlebars" data-template-name="sectionA">
      <section>
        <h1>Section A</h1>
        {{lorem type=paragraph amount=4}}
      </section>
    </script>

	<script type="text/x-handlebars" data-template-name="sectionB">
      <section>
        <h1>Section B</h1>
        {{lorem type=paragraph amount=4}}
      </section>
    </script>

	<script type="text/x-handlebars" data-template-name="sectionC">
      <section>
        <h1>Section C</h1>
        {{lorem type=paragraph amount=4}}
      </section>
    </script>

	<script type="text/x-handlebars" data-template-name="sectionD">
      <section>
        <h1>Section D</h1>
        {{lorem type=paragraph amount=4}}
      </section>
    </script>

	<script type="text/x-handlebars" data-template-name="items">
      <header class="jumbotron subhead">
        <h1>Route Parameters</h1>
        <p>Named parameters can be extracted from routes defined with <code>:property_name</code> segments.</p>
      </header>
      <ul class="nav nav-tabs nav-stacked">
        {{#each item in content}}
          <li><a {{action "doItem" context="item"}}>{{item.title}}</a></li>
        {{/each}}
      </ul>
    </script>

	<script type="text/x-handlebars" data-template-name="item">
      <h1>{{title}}</h1>
      {{{description}}}
    </script>
	
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<script src="<%=ember_assets_path%>/js/libs/jquery-1.7.1.js"></script>
	<script src="<%=ember_assets_path%>/js/libs/jquery.lorem.js"></script>
	<script src="<%=ember_assets_path%>/js/libs/handlebars-1.0.0.beta.6.js"></script>
	<script src="<%=ember_assets_path%>/js/libs/ember.js"></script>
	<script src="<%=ember_assets_path%>/js/app.js"></script>
	<script src="<%=bootstrap_assets_path%>/js/bootstrap.min.js"></script>

  </body>
</html>
