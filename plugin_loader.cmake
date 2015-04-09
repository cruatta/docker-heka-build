## Examples
##
# add_external_plugin(git https://github.com/mozilla-services/heka-mozsvc-plugins 6fe574dbd32a21f5d5583608a9d2339925edd2a7)
# add_external_plugin(git https://github.com/example/path <tag> util filepath)
# add_external_plugin(git https://github.com/bellycard/heka-sns-input :local)
## 
## The ':local' tag is a special case, it copies {heka root}/externals/{plugin_name} into the Go
## work environment every time `make` is run. When local development is complete, and the source
## is checked in, the value can simply be changed to the correct tag to make it 'live'.
## i.e. {heka root}/externals/heka-sns-input -> {heka root}/build/heka/src/github.com/bellycard/heka-sns-input
