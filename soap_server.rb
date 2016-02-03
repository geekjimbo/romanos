require 'logger'
require 'soap/rpc/standaloneServer'

class MyServer < SOAP::RPC::StandaloneServer
  def initialize (* args)
    super 
    add_method(self, 'diga_hola','username')
    # crear el log file
    @log = Logger.new("soapserver.log",5, 10*1024)
  end
  def diga_hola(username)
    t = Time.now 
    @log.info("#{username} ha ingresado en #{t}")
    "Hola, #{username} vos has ingresado en #{t}."
  end
end

server = MyServer.new('JimmyRubyServer','urn:mySoapServer','localhost',12321)
trap('INT') {server.shutdown}
server.start
