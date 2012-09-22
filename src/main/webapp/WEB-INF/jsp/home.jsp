<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Ember.js Router Example</title>
    <meta name="description" content="Example of a basic Ember.js application with a Router" />
    <meta name="author" content="http://codebrief.com" />

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	<% String ember_assets_path = request.getContextPath() + "/resources/ember"; %>
    <link href="<%=ember_assets_path%>/css/bootstrap.min.css" rel="stylesheet" />
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link href="<%=ember_assets_path%>/css/bootstrap-responsive.css" rel="stylesheet" />
    <link href="<%=ember_assets_path%>/css/app.css" rel="stylesheet" />
  </head>

  <body>

    <script src="<%=ember_assets_path%>/js/libs/jquery-1.7.1.js"></script>
    <script src="<%=ember_assets_path%>/js/libs/jquery.lorem.js"></script>
    <script src="<%=ember_assets_path%>/js/libs/bootstrap.min.js"></script>
    <script src="<%=ember_assets_path%>/js/libs/handlebars-1.0.0.beta.6.js"></script>
    <script src="<%=ember_assets_path%>/js/libs/ember.js"></script>
    <script src="<%=ember_assets_path%>/js/app.js"></script>
    
    <script type="text/x-handlebars" data-template-name="application">
      <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <a class="brand" href="#">Ember.js Router Example</a>
            <div class="nav-collapse">
              <ul class="nav">
                <li class="home" {{bindAttr class="isHome:active"}}><a {{action "doHome"}}>Home</a></li>
                <li class="sections" {{bindAttr class="isSections:active"}}><a {{action "doSections"}}>Sections</a></li>
                <li class="items" {{bindAttr class="isItems:active"}}><a {{action "doItems"}}>Items</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
  
      <div class="container">
        {{outlet}}
      </div>
    </script>
    
    <script type="text/x-handlebars" data-template-name="home">
      <div class="hero-unit">
        <h1>Ember.js Routing Example</h1>
        <p>
          This is a quick example showing basic usage of the Ember Router and outlets.<br />
          View it on <a href="https://github.com/ghempton/ember-router-example">GitHub</a>.
        </p>
      </div>
    </script>

    <script type="text/x-handlebars" data-template-name="sections">
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

  </body>
</html>