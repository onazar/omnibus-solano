name "solano"
maintainer "Solano Labs"
homepage "https://github.com/solanolabs/solano.git"

# Defaults to C:/solano on Windows
# and /opt/solano on all other platforms
install_dir "#{default_root}/#{name}"

build_version "1.28.0"

# Solano dependency/component
dependency "solano"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
