<todolist>
  <!-- Logic -->
  <script>
    import './todo-item.tag'
    import { addTodo } from '../actions/todos.js'
    this.dispatch = opts.dispatch
    this.handleInputKeyDown = evt => {
      if (evt.keyCode !== 13) { // enter
        return true
      }
      opts.dispatch(addTodo(evt.target.value))
      // clear input
      evt.target.value = ''
    }
    this.on('mount', () => {
      document.querySelector('.todo-input').focus()
    })
  </script>
  <!-- View -->
  <div class="todolist">
    <input class="todo-input" type="text" onkeydown={ handleInputKeyDown } placeholder="something to do..." />
    <todo-item no-reorder each={ todo in opts.todos } todo={ this.todo } dispatch={ dispatch } />
  </div>
  <!-- Style -->
  <style scoped>
    .todolist {
      width: 500px;
      margin: 20px auto;
      padding: 20px;
      background-color: white;
    }
    input[type="text"] {
      width: 100%;
      padding: 20px;
      font-size: 25px;
      border: none;
      border-bottom: 1px solid #CCC;
    }
    input[type="text"]:focus,
    input[type="text"]:active {
      outline: none;
    }
  </style>
</todolist>
