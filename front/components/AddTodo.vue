<!-- Nuxtにおける.vueファイルのコンポーネントでは、＜template＞というタグへコンポーネントとして表示したい内容を書いていく -->
<template>
  <v-form>
    <v-container>
      <v-row>
        <v-col cols="12" md="4">
          <!-- v-model="title"として、script
          タグのdata()の中で宣言されているtitleと紐づけることができる -->
          <v-text-field
            v-model="title"
            counter="10"
            label="todo"
            required
          ></v-text-field>
        </v-col>
        <v-col cols="12" md="4">
          <!-- ＠click＝ボタンをクリックしたときに、methodsの中で定義した関数を呼び出すことができる -->
          <!-- @は、v-onを省略した記法で、DOMのイベントやイベント発火時のJavaScript実行を可能にしてくれる -->
          <v-btn @click="handleSubmit">作成</v-btn>
        </v-col>
      </v-row>
    </v-container>
  </v-form>
</template>

<script>
export default {
  data() {
    return {
      // titleの値は空なのでフォームには初期値として何も入らない
      title: "",
    };
  },
  methods: {
    handleSubmit() {
      this.$emit("submit", this.title);
      this.title = "";
    },
  },
};
</script>

<style></style>
