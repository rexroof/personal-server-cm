$TTL 14400  ; ( 4 hours = 14400 )
@       IN      SOA     jrgrain.com.   dns-admin.rexroof.com. (
          2025081401
          3600 3600 3600 3600 )

          ; 10800     ; refresh ( 3 hours = 10800 )
          ; 3600      ; retry  ( 1 hour = 3600 )
          ; 604800    ; expire  ( 1 week = 604800 )
          ; 3600 )    ; minimum ttl  ( 1 hr = 3600, 24 hours = 86400 )

		IN	NS	dns.rexroof.com.
		IN	NS	dns2.rexroof.com.
		IN	NS	dns3.rexroof.com.

@		IN	MX	10 pecan.rexroof.com.
@		IN	MX	10 mesquite.rexroof.com.
@		IN	MX	10 hickory.rexroof.com.

@        IN TXT  "v=spf1 mx a a:hickory.rexroof.com a:pecan.rexroof.com a:mesquite.rexroof.com include:_spf.google.com ~all"
_DMARC   IN TXT "v=DMARC1; p=reject; rua=mailto:dmarc-reports@rexroof.com; adkim=r; aspf=s;"

default._domainkey  IN TXT  "v=DKIM1; k=rsa; s=email; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDs2noWcV0LYW5CjDfXlfRy8/SxFaR3D6jmWjx57oRAGffOT0hyA6V7lKS/f+0ExLmnXgLv+8Mh0ss+WEQOSmw5YAN04GOmpGOn78DxHXR5R9lAQa3C7iU0cBuqpGNJ8FjDj3zqq8INTItOnak2Cu6wPqT4mVATaQ3JDd3H1mzwZwIDAQAB"

@		IN	A 216.55.155.66
*		IN	A 216.55.155.66
www		IN CNAME	jrgrain.com.
