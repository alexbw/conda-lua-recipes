# Conda sets this envvar by default, and it mucks with building newer C++ features
unset MACOSX_DEPLOYMENT_TARGET
$PREFIX/bin/luarocks make terra-scm-1.rockspec --local-tree