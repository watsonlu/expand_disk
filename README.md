# expand_disk Cookbook
Expand your windows disk using chef.

##Usage

Include the default recipe in your runlist and set the attributes

If no attributes are set the cookbook will set Disk 0, Partition 4 to 75GB's

##Attributes

###Required
```ruby
node['expand_disk']['disk_number'] = 0
```
The disk number to edit, defaults to 0

```ruby
node['expand_disk']['disk_number'] = 0
```

The partition number to edit, defaults to 4

```ruby
node['expand_disk']['size'] = '75GB'
```
The size to expand the disk to. Defaults to 75GB. You can set it to something like "1TB" or "5MB" as well.