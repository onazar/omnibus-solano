name "solano"
default_version "1.28.0"

dependency "ruby"
dependency "rubygems"

build do
  gem "install solano -n #{install_dir}/bin --no-rdoc --no-ri -v #{default_version}"
  command "rm -rf #{install_dir}/embedded/docs"
  command "rm -rf #{install_dir}/embedded/share/man"
  command "rm -rf #{install_dir}/embedded/share/doc"
  command "rm -rf #{install_dir}/embedded/ssl/man"
  command "rm -rf #{install_dir}/embedded/info"
end
