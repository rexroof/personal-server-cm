$TTL 14400  ; ( 4 hours = 14400 )
@       IN      SOA     erinmann.com.   dns-admin.rexroof.com. (
		2025042701
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

@        IN TXT  "v=spf1 mx a a:hickory.rexroof.com a:pecan.rexroof.com a:mesquite.rexroof.com include:_spf.google.com ~all"
_DMARC   IN TXT "v=DMARC1; p=reject; rua=mailto:dmarc-reports@rexroof.com; adkim=r; aspf=s;"

@     IN A 104.244.79.72
@     IN A 198.98.49.26
@     IN A 199.19.224.244

*     IN A 104.244.79.72
*     IN A 198.98.49.26
*     IN A 199.19.224.244
