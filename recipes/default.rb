powershell_script 'expand disk' do
  code <<-EOH
  	Resize-Partition -DiskNumber #{node['expand_disk']['disk_number']} -PartitionNumber #{node['expand_disk']['partition_number']} -Size #{node['expand_disk']['size']}
  EOH
end