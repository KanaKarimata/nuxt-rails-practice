<template>
  <div>
    <AddTodo @submit="addTodo" />
    <TodoList :todos="todos" />
  </div>
</template>

<script>
// @=エイリアス:プロジェクトのトップディレクトリを指せる
  import AddTodo from "../components/AddTodo.vue";
  import TodoList from "../components/TodoList.vue";

  export default {
    components: {
      AddTodo,
      TodoList
    },
    data() {
      return {
        todos: [],
      };
    },
    methods: {
      addTodo(title) {
        this.todos.push ({
          title
        });
      },
    },
  };

</script>

<style>
</style>