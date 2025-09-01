$TTL 1800  ; ( 4 hours = 14400 )
@       IN      SOA     beastoftheyear.com.   nataliejaynewood.gmail.com. (
		2009123001
                10800     ; refresh ( 3 hours = 10800 )
                3600      ; retry  ( 1 hour = 3600 )
                604800  ; expire  ( 1 week = 604800 )
                86400 )    ; minimum ttl  ( 1 hr = 3600, 24 hours = 86400 )
		IN	NS	dns.rexroof.com.
		IN	MX	10 mx.rexroof.com.
		IN	A	67.214.126.219

www		IN	A	67.214.126.219
*		IN	A	67.214.126.219
