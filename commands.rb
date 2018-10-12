#!/usr/bin/ruby
#  John Williams
#  105201054
#  Date: Fri. Oct. 12, 2018
#  Program: commands.rb



 def list_exec(session,cmdlst)
    print_status("Running Command List ...")
    r=''
    session.response_timeout=120
    cmdlst.each do |cmd|
       #begin
          print_status "trunning command #{cmd}"
          r = session.sys.process.execute("cmd.exe /c #{cmd}", nil, {'Hidden' => true, 'Channelized' => true})
          while(d = r.channel.read) 
 
             print_status("t#{d}")
          end
          r.channel.close
          r.close
       rescue ::Exception => e
          print_error("Error Running Command #{cmd}: #{e.class} #{e}")
      # end
    end
 end

commands = [ "set", "ipconfig /all", "arp -a" ]


list_exec(client,commands)
