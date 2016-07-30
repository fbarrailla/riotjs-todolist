export default function(state={}, action) {
  switch (action.type) {
    case 'ADD_TODO':
      return [...state, {
        _id: +new Date(),
        task: action.task,
        done: false
      }]
    case 'TOGGLE_CHECK_TODO':
      return state.map(t => t === action.todo ? {...t, done: !t.done} : t)
    case 'DELETE_TODO':
      return state.filter(t => t !== action.todo)
    default:
      return state;
  }
}
