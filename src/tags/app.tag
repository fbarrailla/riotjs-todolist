<app>
  <!-- Logic -->
  <script>
    import './todolist.tag'
    this.state = opts.store.getState()
    // Listen to store changes
    this.on('mount', () => {
      opts.store.subscribe(() => {
        this.update({ state: opts.store.getState() })
      })
    })
  </script>
  <!-- View -->
  <todolist todos={ state.todos } dispatch={ opts.store.dispatch } />
  <!-- Global styles -->
  <style>
    * { box-sizing: border-box; }
    html {
      margin: 0;
      font-family: 'Roboto Condensed', sans-serif;
      background-color: rgba(0, 0, 0, .1);
    }
    input, button {
      font-family: inherit;
    }
    head,
    title {
      display: block;
    }
    title {
      text-align: center;
      font-size: 50px;
      margin-top: 50px;
    }
  </style>
</app>
