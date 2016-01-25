class TodoStore
  @displayName: 'TodoStore'

  constructor: ->
    @bindActions(TodoActions)    
    @todos = []

    @exportPublicMethods(
      {
        getTodos: @getTodos 
      }
    )

  onInitData: (props) ->
    @todos = props.todos

  getTodos: () ->
    @getState().todos

  onSubmitTodo: (name) ->
    console.log(name)
    $.ajax
      type: 'POST'
      url: '/todos'
      data:
        todo:
          name: name
          checked: false
      success: (response) =>
        @todos.push(response)
        @emitChange()
      error: (response) =>
        console.log('error')
        console.log(response)

    return false

  onCheckTodo: (todo_id) ->
    $.ajax
      type: 'DELETE'
      url: "/todos/#{todo_id}"
      success: (response) =>
        if response.checked == true
          _.find(@todos, { id: response.id }).checked = true
        else
          _.find(@todos, { id: response.id }).checked = false
          
        @emitChange()
      error: (response) =>
        console.log('error')
        console.log(response)

    return false

window.TodoStore = alt.createStore(TodoStore)
