require 'rubygems'
require 'pp'
require 'win32ole'  
# Returns the number of windows processes running with the specified name.  
 
puts "Kill process by name"
  
mgmt = WIN32OLE.connect('winmgmts:\\\\.')  
processes=mgmt.instancesof("win32_process") 
#puts processes.class		#=>win32ole
 
processName = "iexplore.exe"
 
processes.each do |process|  
	pp process.name
	if process.name.match(processName) 
		process.terminate()  
	end  
end  