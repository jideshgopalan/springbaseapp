   <script type="text/x-handlebars" data-template-name="layout-nesting">
      <header class="jumbotron subhead">
        <h1>Layout Nesting</h1>
        <p>Layouts can be nested arbitrarily deep using <code>dynamicView</code> calls.</p>
        <div class="subnav">
          <ul class ="nav nav-pills">
            <li class="section1"><a href="#layout-nesting/section1">Section 1</a></li>
            <li class="section2"><a href="#layout-nesting/section2">Section 2</a></li>
            <li class="section3"><a href="#layout-nesting/section3">Section 3</a></li>
            <li class="section4"><a href="#layout-nesting/section4">Section 4</a></li>
          </ul>
        </div>
      </header>
      <div class="sub-container">
        {{dynamicView}}
      </div>
    </script>