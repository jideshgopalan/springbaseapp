<script type="text/x-handlebars" data-template-name="main">
      <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <a class="brand" href="#">Hello World !</a>
            <div class="nav-collapse">
              <ul class="nav">
                <li class="home"><a href="#">Home</a></li>
                <li class="layout-nesting"><a href="#layout-nesting/section1">Layout Nesting</a></li>
                <li class="route-parameters"><a href="#route-parameters">Route Parameters</a></li>
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </div>
      </div>
  
      <div class="container">
        {{dynamicView}}
      </div>
    </script>