node['expand_disk']['operations'].to_hash.each do |disk, data|
	current_disk = disk.gsub('disk', '')
	data.each do | partition, size |
		current_partition = partition.gsub('partition', '')
		powershell_script "expand disk: #{current_disk}, partiton: #{current_partition} size: #{size}" do
			code <<-EOH
				Resize-Partition -DiskNumber #{current_disk} -PartitionNumber #{current_partition} -Size #{size}
			EOH
		end
	end

end



