module LicenseList
  module Tasks
    module License
      extend self
      def list
        list_licenses($stdout)
      end
      def export(file_name)
        if file_name.blank?
          file_name = "license.csv"
        end

        if File.exist?(file_name)
          puts "file #{file_name} already exists"
        else
          puts "writing to #{file_name}"
          File.open(file_name, "w+") do |f|
            list_licenses(f)
          end
        end
      end

      private

      def list_licenses(output)
        Gem.loaded_specs.each do |key, spec|
          spec.licenses.each do |license|
            output.write("\"#{spec.name.gsub('"', '""')}\",\"#{license.gsub('"', '""')}\"\n")
          end
        end
      end
    end
  end
end
