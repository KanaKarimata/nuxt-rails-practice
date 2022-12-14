<template>
  <v-card>
    <v-card-title>
      Todo List
      <v-spacer></v-spacer>
      <!-- Todoリストの検索バーを作る。v-modelで渡している値は検索バーに入っている初期値。今回は初めから文字を入れておく必要がないのでdata()の方でから文字を宣言している。 -->

      <!-- v-modelでsearchという値を指定しています。このテキストフィールドで入力した値がsearchという値に入りそれがそのまま<v-text-table>のsearchぷrっパティとして利用される -->
      <v-text-field v-model="search" label="Search" single-line hide-details></v-text-field>
  </v-card-title>
  <!-- ：はv-bindの省略 -->
  <!-- v-bind Vueオブジェクトの変数の値とHTMLを結びつけることができる -->
  <!-- （例）：headersというプロパティにはVueのheadersという変数ノアたちが当てられていますが、このコロンを消すとエラーになる。vueのオブジェクトが渡されるはずの場所に"headers"という文字列が渡されてしまうことになるため。 -->
  <!-- ：を消すとVueの変数として理解してもらえなくなる -->

  <v-data-table :headers="headers" :items="todos" :search="search"></v-data-table>
  </v-card>
</template>

<script>
  export default {
    data() {
      return {
        todos: [
          {
            title: "test",
            username: "太郎"
          }
        ],
        search:"",
        // headersとは、テーブルのヘッダーとなるプロパティを指定できる。
        headers: [
          {
            text: "タイトル",//先頭にヘッダーの内容
            align: "left",//テーブルに対して文字を左づめ
            sortable: false,
            value: "title"//どの値をその列に表示させるか
          },
          {
            text: "ユーザー名",
            value: "username"
          }
        ]
      };
    }
  };
</script>

<style>
</style>