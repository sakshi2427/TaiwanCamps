const esbuild = require("esbuild");
const glob = require("glob");
const path = require("path");

// Expand all JavaScript files inside app/javascript
const files = glob.sync("app/javascript/**/*.js");

esbuild.build({
  entryPoints: files,
  bundle: true,
  sourcemap: true,
  outdir: "app/assets/builds",
  publicPath: "assets",
  platform: "browser",
  target: ["es6"],
}).catch(() => process.exit(1));
