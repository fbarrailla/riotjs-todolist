export const load = () => {
  return JSON.parse(localStorage.getItem('_state') || '{}')  
}

export const save = state => {
  localStorage.setItem('_state', JSON.stringify(state))
}
