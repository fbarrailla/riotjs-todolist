<todo-item>
  <!-- Logic -->
  <script>
    import { deleteTodo, toggleCheckTodo } from '../actions/todos.js'
    this.toggleCheckTodo = () => {
      opts.dispatch(toggleCheckTodo(opts.todo))
    }
    this.deleteTodo = () => {
      opts.dispatch(deleteTodo(opts.todo))
    }
  </script>
  <!-- View -->
  <div class={ 'todo-item': true, done: opts.todo.done }>
    <span class="task">{ opts.todo.task }<span>
    <button class="checkbox" onclick={ toggleCheckTodo }>
      <span if={ opts.todo.done }>✔</span>
    </button>
    <button class="delete" type="button" onclick={ deleteTodo }>✕</button>
  </div>
  <!-- Style -->
  <style scoped>
    .todo-item {
      padding: 20px 0 20px 40px;
      font-size: 20px;
      position: relative;
    }
    .todo-item.done .task {
      text-decoration: line-through;
    }
    button {
      position: absolute;
      width: 20px;
      height: 20px;
      border: 1px solid #CCC;
      text-align: center;
      background-color: transparent;
      padding: 0;
    }
    button:focus,
    button:active {
      outline: none;
    }
    .checkbox {
      left: 0;
      top: 22px;
    }
    .delete {
      opacity: 0;
      right: 20px;
      top: 20px;
      border-radius: 15px;
      transition: opacity .2s linear;
    }
    .todo-item:hover .delete {
      opacity: 1;
    }
  </style>
</todo-item>
