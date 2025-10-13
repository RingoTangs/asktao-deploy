import { defineConfig } from "rollup";
import commonjs from "@rollup/plugin-commonjs";
import nodeResolve from "@rollup/plugin-node-resolve";
import rollupJSON from "@rollup/plugin-json";

export default defineConfig({
  input: "./index.js",
  output: {
    file: "dist/index.js",
    format: "cjs",
    sourcemap: false,
  },

  plugins: [
    // 解析 node_modules 中的模块
    nodeResolve(),
    // 将 CommonJS 模块转换为 ES6
    commonjs(),
    rollupJSON(),
  ],
});
