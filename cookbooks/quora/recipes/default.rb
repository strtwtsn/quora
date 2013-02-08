gem_package "bundle" do
action :install
end


bash "Download quora" do
user "root"
cwd "/usr/local/src"
code <<-EOH
git clone -b localization git://github.com/huacnlee/quora.git /usr/local/src
EOH
end

bash "Post Download Changes" do
user "root"
cwd "/usr/local/src/"
code <<-EOH
cd quora
bundle install --path vendor/bundle
cp config/mongoid.yml.default config/mongoid.yml
cp config/setting.yml.default config/setting.yml
cp config/redis.yml.default config/redis.yml
cp config/zomet.yml.default config/zomet.yml
cp config/sphinx.yml.default config/sphinx.yml
EOH
end
