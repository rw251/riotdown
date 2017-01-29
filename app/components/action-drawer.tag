require('./my-button.tag');

<action-drawer onclick={ close }>
  <div class="modal-content narrow">
    <ul>
      <li>
        <my-button onclick={ exit } text="Resume"></my-button>
      </li>
      <li>
        <my-button text="Save"></my-button>
      </li>
      <li>
        <my-button text="Submit feedback"></my-button>
      </li>
      <li>
        <my-button text="Game info"></my-button>
      </li>
      <li>
        <my-button onclick={ quit } text="Quit"></my-button>
      </li>
    </ul>
  </div>

  <script>
    var tag = this;

    var closeModal = function(){
      tag.root.style.display = "none";
    };

    var openModal = function(){
      tag.root.style.display = "block";
    };

    tag.on('mount', function () {
      // Trigger init event when component is mounted to page. Any store could respond to this.
      riot.control.trigger('letters_init')
    });

    // Register a listener for store change events.
    riot.control.on('action-drawer-open', function () {
      openModal();
    });

    tag.close = function (event) {
      if (event.target == tag.root) {
        closeModal();
      }
    };

    tag.exit = function (event) {
      closeModal();
    };

    tag.quit = function (event) {
      closeModal();
      riot.control.trigger('show-page', "home");
    };
  </script>

  <style>
    ul {
      list-style-type: none;
      margin:0;
      padding:20px;
    }
    li {
      margin: 10px;
    }
    /* Makes whole screen look greyed out*/
    action-drawer {
      display: none;
      /* Hidden by default */
      position: fixed;
      /* Stay in place */
      z-index: 1;
      /* Sit on top */
      left: 0;
      top: 0;
      width: 100%;
      /* Full width */
      height: 100%;
      /* Full height */
      overflow: auto;
      /* Enable scroll if needed */
      background-color: rgb(0, 0, 0);
      /* Fallback color */
      background-color: rgba(0, 0, 0, 0.4);
      /* Black w/ opacity */
      cursor: pointer;
      /*so click event works on iphone ipad etc.*/
    }

    /* Modal Content/Box */

    .modal-content {
      position: relative;
      background-color: #fefefe;
      margin: auto;
      padding: 0;
      border: 1px solid #888;
      width: 80%;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      -webkit-animation-name: animatetop;
      -webkit-animation-duration: 0.4s;
      animation-name: animatetop;
      animation-duration: 0.4s;
    }

    .narrow.modal-content {
      max-width: 300px;
    }

    /* Add Animation */
    @-webkit-keyframes animatetop {
      from {
        top: -300px;
        opacity: 0;
      }
      to {
        top: 0;
        opacity: 1;
      }
    }
    @keyframes animatetop {
      from {
        top: -300px;
        opacity: 0;
      }
      to {
        top: 0;
        opacity: 1;
      }
    }

  </style>
</action-drawer>
