name             "application_z_python"
maintainer       "Opscode, Inc."
maintainer_email "cookbooks@opscode.com"
license          "Apache 2.0"
description      "Deploys and configures Python-based applications"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "4.0.2"

%w{ python gunicorn z_supervisor }.each do |cb|
  depends cb
end

depends "application", "~> 4.0"
