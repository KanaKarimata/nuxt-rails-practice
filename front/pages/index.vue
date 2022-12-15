<template>
  <div>
    <AddTodo @submit="addTodo" />
    <TodoList :todos="todos" />
  </div>
</template>

<script>
// @=エイリアス:プロジェクトのトップディレクトリを指せる
  import AddTodo from '@/components/AddTodo';
  import TodoList from '@/components/TodoList';

  export default {
    components: {
      AddTodo,
      TodoList,
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