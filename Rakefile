require 'rubygems'
require 'rubygems/package_task'

Gem::PackageTask.new(spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar_gz = true
  pkg.need_tar_bz2 = true
end

task :default => "pkg/#{spec.name}-#{spec.version}.gem" do
    puts "Successfully created #{spec.name}-#{spec.version} gem"
end

if $0 == __FILE__
  Gem::manage_gems
  Gem::Builder.new(spec).build
end
