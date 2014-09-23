namespace :license do
  desc "List licenses"
  task :list => :environment do
    ::LicenseList::Tasks::License.list
  end

  desc "Export licenses"
  task :export, [:file_name] => :environment do |t, args|
    ::LicenseList::Tasks::License.export(args.file_name)
  end
end
