$TTL 14400  ; ( 4 hours = 14400 )
@       IN      SOA     roofsfarm.com.   dns-admin.rexroof.com. (
		2025081401
                10800     ; refresh ( 3 hours = 10800 )
                3600      ; retry  ( 1 hour = 3600 )
                604800  ; expire  ( 1 week = 604800 )
                3600 )    ; minimum ttl  ( 1 hr = 3600, 24 hours = 86400 )
@		IN	NS	dns.rexroof.com.
@		IN	NS	dns2.rexroof.com.
@		IN	NS	dns3.rexroof.com.
@		IN	MX	10 pecan.rexroof.com.
@		IN	MX	10 mesquite.rexroof.com.
@		IN	MX	10 hickory.rexroof.com.

@        IN TXT  "v=spf1 mx a a:hickory.rexroof.com a:pecan.rexroof.com a:mesquite.rexroof.com include:google.com ~all"
default._domainkey  IN TXT  "v=DKIM1; k=rsa; s=email; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDjy50puiEfhRvQEU3F2jfe/s++1DlcY7J7A8x+lgf8qUtttpJ916P4I2xJ2yiSC7gYLIHlSVZ5+4mCH8KlcskAp//l5mCDM5qjvhKl+jKDsM4z17e5KGIxnlKJvLH581ZwcoS2RggeisS7TnZJzmWYAw5+LMGS5PoJ3yR5xqWgdQIDAQAB" 

@     IN A 104.244.79.72
@     IN A 198.98.49.26
@     IN A 199.19.224.244

*     IN A 104.244.79.72
*     IN A 198.98.49.26
*     IN A 199.19.224.244
