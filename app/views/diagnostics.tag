<diagnostics show={ show }>
  <h1>Diagnostics</h1>

  <a href="#" onclick={close}>Back to game</a>

  <h2>Episodes without data</h2>
  <div class="diag-wrap">
    <div class="diag-item" each={ id in withoutList}>
      <a href={"http://wiki.apterous.org/Episode_" + id } target="_blank">{id}</a>
    </div>
  </div>

  <h2>Episodes with data</h2>
  <div class="diag-wrap">
    <div class="diag-item" each={ id in (showFullWithList ? withList : withList.slice(0,100))}>{ id }</div>
    <a if={!showFullWithList} onclick={showmore} href="#" target="_blank">Show more...</a>
  </div>

  <script>
    var tag = this;
    tag.show = false;
    tag.showFullWithList=false;
    tag.withoutList=[];
    tag.withList=[];
    riot.control.on('show-page', function (page) {
      var prevShow = tag.show;
      tag.show = page === "diagnostics";
      if(tag.show !== prevShow) tag.update();
    });

    tag.close = function(e) {
      tag.showFullWithList=false;
      riot.control.trigger('show-page', "home");
      e.preventDefault();
    };

    tag.showmore = function(e) {
      tag.showFullWithList=true;
      tag.update();
      e.preventDefault();
    };

    fetch("http://localhost:8080/diagnostics.php?m=episodesWithoutData").then(function (r) {
      r.json().then(function (data) {
        tag.withoutList = data;
        tag.update();
      });
    });

    fetch("http://localhost:8080/diagnostics.php?m=episodesWithData").then(function (r) {
      r.json().then(function (data) {
        tag.withList = data;
        tag.update();
      });
    });
  </script>

  <style>

    diagnostics {
      overflow:auto;
    }

    .diag-wrap {
      display: flex;
      flex-wrap: wrap;
    }

    .diag-item {
      background-color: #96a8b2;
      color: #fff;
      position: relative;
      margin: 0.2em;
      padding: 1em;
      border-radius: 4px;
      width: 45px;
      text-align: center;
    }

  </style>
</diagnostics>
