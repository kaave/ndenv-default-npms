# ndenv-default-npms

This [ndenv](https://github.com/riywo/ndenv) plugin is simular to [rbenv-default-gems](https://github.com/rbenv/rbenv-default-gems): It hooks into the `ndenv install` command to automatically install npms to global on every time you install a new version of Node.js or io.js.

## How to install

```
git clone https://github.com/kaave/ndenv-default-npms.git $(ndenv root)/plugins/ndenv-default-npms
```

## Add `default-npms` file

Create text file to `$(ndenv root)/default-npms` and add your need packages.

```text
#----------------
# Example setting
#----------------

# Lines beginning with a # are comment line.

npm
# => npm i -g npm

coffee-script@1.9.0
# => npm i -g coffee-script@1.9.0

typescript@next
# => npm i -g typescript@next
```
