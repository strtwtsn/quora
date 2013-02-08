remote_file "/usr/local/src/sphinx.deb
source "http://sphinxsearch.com/files/sphinxsearch_2.0.6-release-0ubuntu11~lucid_i386.deb"
end

bash "Install Sphinx" do
user "root"
cwd "/usr/local/src"
code <<-EOH
dpkg -i /usr/local/src/sphinx.deb
EOH
end

