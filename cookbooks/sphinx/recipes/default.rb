package "python-software-properties"

bash "Add sphinx repo and install" do
user "root"
code <<-EOH
add-apt-repository ppa:builds/sphinxsearch-stable
apt-get update
apt-get install sphinxsearch
EOH
end

