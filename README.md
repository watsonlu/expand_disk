# expand_disk Cookbook
Expand your windows disks using chef.

##Usage

Include the default recipe in your runlist and set the attributes

##Attributes

Disk operations are specified through attributes.

```yaml
expand_disk:
    operations:
        disk<disk number>:
            partition<partition number: '<new size>'
```

The cookbook will loop through all disks under :operations and each partition under each disk.

Note that disks start at **zero** and partitions start at **one**.

##Examples

Resize multiple disks:

```yaml
example_disk:
    operations:
        disk0:
            partition4: '1TB'
        disk1:
            partition3: '2TB'
```

##Common Errors

* "Size not supported". This usually means that there isn't enough unallocated space on the disk or the disk size is less than its current size. Make sure you expand the disk in your VM manager so that there is unallocated space.
* "This operation is only supported on data partitions". This usually means that you are trying to expand a recover or system partition. Double check which partition you are trying to expand.