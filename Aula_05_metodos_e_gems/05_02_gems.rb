require 'os'

def my_os
	if OS.windows?
		"Windows"
	elsif OS.linux?
		"Linux"
	elsif OS.mac?
		"Osx"
	else
		"Nao consegui identificar"
	end
end

puts "Meu PC possui #{OS.cpu_count} cores, eh #{OS.bits} bits e o sitema operacional eh #{my_os}"
			
			