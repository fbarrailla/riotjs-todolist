export const addTodo = (task) => {
  return {
    type: 'ADD_TODO',
    task
  }
}

export const deleteTodo = (todo) => {
  return {
    type: 'DELETE_TODO',
    todo
  }
}

export const toggleCheckTodo = (todo) => {
  return {
    type: 'TOGGLE_CHECK_TODO',
    todo
  }
}
