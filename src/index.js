import { createStore } from 'redux'
import { load, save } from './storage.js'
import rootReducer from './reducers'
import './tags/app.tag'

const store = createStore(rootReducer, load())

store.subscribe(() => {
  save(store.getState())
})

riot.mount('*', { store })
