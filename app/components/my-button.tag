<my-button>
  <button class="{c-button: true, c-button--success: opts.green}">{opts.text}</button>

  <style>

    .c-button {
      border: 1px solid transparent;
      background-color: #96a8b2;
      color: #fff;
      display: inline;
      width: 100%;
      margin: 0;
      padding: 0.5em;
      border-radius: 4px;
      outline: 0;
      font-family: inherit;
      font-size: 1.5em;
      line-height: normal;
      text-align: center;
      text-decoration: none;
      text-overflow: ellipsis;
      white-space: nowrap;
      cursor: pointer;
      overflow: hidden;
      vertical-align: middle;
      -webkit-appearance: none;
      -moz-appearance: none;
      appearance: none;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }
    .c-button:hover {
      background-color: #b0bec5;
    }
    .c-button:focus {
      border-color: #2196f3;
      box-shadow: inset 0 0 0 2px #4dabf5;
    }
    .c-button::active {
      background-color: #7b929e;
    }
    .c-button--success {
      border: 1px solid transparent;
      background-color: #4caf50;
      color: #fff;
    }
    .c-button--success:hover {
      background-color: #6abe6e;
    }
    .c-button--success:focus {
      border-color: #2196f3;
      box-shadow: inset 0 0 0 2px #4dabf5;
    }
    .c-button--success:active {
      background-color: #3e8f41;
    }

  </style>
</my-button>
