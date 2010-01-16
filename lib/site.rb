require 'socket'
require 'openssl'
require 'chronic'

class Site
  include OpenSSL              

  attr_accessor :expiry
  attr_accessor :status
  attr_accessor :url

  def initialize(site)
    @url = site
    
    begin
      soc = TCPSocket.new(site, 443)
      ssl = SSL::SSLSocket.new(soc)
      ssl.connect
      ssl.write('HI FROM CHECKMYSSL!')         

      cert = ssl.peer_cert
    
      @expiry = cert.not_after
      @status = :success
    rescue Errno::ECONNREFUSED 
      @status = :not_ssl
    rescue SocketError
      @status = :failure
    ensure
      ssl.andand.close
      soc.andand.close
    end
  end
  
  def expired
    @expiry < Time.now
  end
  
  def expires_in_30_days
    @expiry < Chronic.parse('30 days ago') && !expired
  end



end