require 'prime'

class RSA
    def initialize n, e, d
      @n = n
      @e = e
      @d = d
    end
    
    def n
       @n
    end
    
    def e
       @e
    end
    
    def d
       @d
    end
    
    def self.new_key
      a = rand(2...50)
      p1 = Prime.take(a).last

      a = rand(2...50)
      p2 = Prime.take(a).last

      n = p1*p2
      phi_n = (p1 - 1)*(p2 - 1)

      a = rand(2...50)
      e = Prime.take(a).last

      d = (2*phi_n + 1)/e

      [n, e, d]
    end
    
    def encrypt message
      enc_message = String.new
      message.each_byte do |c|
        m = (c ** @e) % @n
        enc_message << "#{m}"
        enc_message << " "
      end
      enc_message
    end
    
    def decrypt message
      dec_message = message.split(/\W+/)
      puts dec_message
      for i in 0..dec_message.count - 1
        puts dec_message[i].to_i
        dec_message[i] = (dec_message[i].to_i**@d % @n).chr
      end
      
    end 
 end

 keys = RSA.new_key
 mess = RSA.new(keys[0], keys[1], keys[2])
 enc_message = mess.encrypt "Hello"
 mess.decrypt enc_message