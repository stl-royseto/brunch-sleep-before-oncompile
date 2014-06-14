## brunch-sleep-before-oncompile

This [brunch](http://brunch.io) microplugin sleeps for a specified
number of milliseconds before the onCompile phase starts.

## Usage

Add `"brunch-sleep-before-oncompile": "git url"` to `package.json` of your brunch app. As of brunch 1.7.14, the order of plugins in package.json is significant: onCompile callbacks execute in the order listed in package.json.

Then in your brunch config, add the number of milliseconds to sleep before the onCompile phase as in the following example:

```coffeescript
exports.config =
  plugins:
    sleepBeforeOnCompile: 5000
```