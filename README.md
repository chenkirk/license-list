license-list
============

Rake tasks to list gems and their licenses. It also supports exporting to csv format.

The format is two columns: gem name and the license. If a gem has multiple licenses, they are listed as multiple lines.

List gems and their licenses
----------------------------

The following rake task will list the gems and their licenses

    rake license:list

Export gems and their licenses
------------------------------

The following rake task will export the gems and their licenses to license.csv.

    rake license:export

You can also specify your own file name.

    rake license:export[my_license.csv]
