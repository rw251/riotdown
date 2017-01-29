<score>
  <div>
    <div>{ opts.name }</div>
    <div>{ opts.score }</div>
  </div>

  <style>

    score {
      -ms-flex: 0 1 auto;
      flex: 0 1 auto;
      /* Don't stretch - just shrink if not enough space */
      /* Now we make it center vertically within the container*/
      display: -ms-flexbox;
      display: flex;
      -ms-flex-align: center;
      align-items: center;
      justify-content: center;
    }
    
    score>div {
      text-align: center;
    }

  </style>
</score>
