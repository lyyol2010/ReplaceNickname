<template>
  <div class="replacenickname">
    <h1>微信昵称转换</h1>
    <el-input
      type="textarea"
      :autosize="{ minRows: 5, maxRows: 99}"
      placeholder="请输入内容"
      v-model="input_string">
    </el-input>
    <div style="margin: 20px 0;"></div>
    <el-button
      type="primary"
      icon="el-icon-refresh"
      v-on:click="transform">转换
    </el-button>
    <div style="margin: 20px 0;"></div>
    <el-input
      type="textarea"
      :autosize="{ minRows: 5, maxRows: 99}"
      placeholder="转换结果"
      v-model="output_string">
    </el-input>
    <div style="margin: 50px 0;"></div>
    <h6 style="color: #9a9a9a;">@内部使用</h6>
  </div>
</template>

<script>
import {nameList} from "../data/NameList.js"
export default {
  name: 'ReplaceNickname',
  data() {
    return {
      input_string: '',
      output_string: '',
      list: nameList,
      length: nameList.length
    }
  },
  methods: {
    transform() {
      var temp = this.input_string;
      for (var i = 0; i < this.length; i++) {
        temp = temp.replace(this.list[i].name, this.list[i].nickname);
        temp = temp.replace("、", " ");
      }
      temp = temp.replace("、", " ");
      if (temp[temp.length - 1] != " ") {
        temp += " ";
      }
      this.output_string = temp;
    }
  }
}
</script>
