$TTL 1800  ; ( 4 hours = 14400 )
rexroof.com.       IN      SOA     dns.rexroof.com.   rex.rexroof.com. (
	2025090102
        3600 ; refresh [1h]
        600  ; retry [10m]
        1209600 ; expire [14d]
        3600 ) ; min TTL [1h]
@		IN	NS	dns.rexroof.com.
@		IN	NS	plum.rexroof.com.
@		IN	NS	strawberry.rexroof.com.


@        IN TXT  "v=spf1 mx a a:hickory.rexroof.com a:pecan.rexroof.com a:mesquite.rexroof.com a:peach.rexroof.com a:orange.rexroof.com a:plum.rexroof.com a:strawberry.rexroof.com include:_spf.google.com ~all"
_DMARC   IN TXT "v=DMARC1; p=reject; rua=mailto:dmarc-reports@rexroof.com; adkim=r; aspf=s;"
default._domainkey  IN TXT  "v=DKIM1; k=rsa; s=email; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQChaM+/eK4UDwgHw84x4lbsjENqIwA1vPOQfDSlPUgkmW8Fp3lB9B5p8brM8r+oIo/cZxCbdzpezeBfss7f6uQVOS33b4Bc9Re9t6GgWYxvEp7iM2/trATe+EOp6TAFpv+9E3/mztSjSgUjuHXsCdGQq8wWQeIiSDpohKBFfp0usQIDAQAB"

; smokes
@  IN A 104.244.79.72
@  IN A 198.98.49.26
@  IN A 199.19.224.244
; fruits
@  IN A 192.3.16.5
@  IN A 107.175.28.54
@  IN A 23.95.14.209
@  IN A 172.245.240.22

dns  IN A 104.244.79.72
dns2 IN A 199.19.224.244
dns3 IN A 198.98.49.26

peach      IN A 192.3.16.5
peach      IN TXT  "v=spf1 a a:peach.rexroof.com ~all"
_DMARC.peach   IN TXT "v=DMARC1; p=reject; rua=mailto:dmarc-reports@rexroof.com; adkim=r; aspf=s;"
@		IN	MX	10 peach.rexroof.com.
orange     IN A 107.175.28.54
orange     IN TXT  "v=spf1 a a:orange.rexroof.com ~all"
_DMARC.orange   IN TXT "v=DMARC1; p=reject; rua=mailto:dmarc-reports@rexroof.com; adkim=r; aspf=s;"
@		IN	MX	10 orange.rexroof.com.
plum       IN A 23.95.14.209
plum       IN TXT  "v=spf1 a a:plum.rexroof.com ~all"
_DMARC.plum   IN TXT "v=DMARC1; p=reject; rua=mailto:dmarc-reports@rexroof.com; adkim=r; aspf=s;"
@		IN	MX	10 plum.rexroof.com.
strawberry IN A 172.245.240.22
strawberry IN TXT  "v=spf1 a a:strawberry.rexroof.com ~all"
_DMARC.strawberry   IN TXT "v=DMARC1; p=reject; rua=mailto:dmarc-reports@rexroof.com; adkim=r; aspf=s;"
@		IN	MX	10 strawberry.rexroof.com.
fruits  IN A 192.3.16.5
fruits  IN A 107.175.28.54
fruits  IN A 23.95.14.209
fruits  IN A 172.245.240.22

hickory  IN A 104.244.79.72
hickory  IN TXT  "v=spf1 a a:hickory.rexroof.com ~all"
_DMARC.hickory   IN TXT "v=DMARC1; p=reject; rua=mailto:dmarc-reports@rexroof.com; adkim=r; aspf=s;"
@		IN	MX	10 hickory.rexroof.com.
pecan    IN A 198.98.49.26
pecan    IN TXT  "v=spf1 a a:pecan.rexroof.com ~all"
_DMARC.pecan   IN TXT "v=DMARC1; p=reject; rua=mailto:dmarc-reports@rexroof.com; adkim=r; aspf=s;"
@        IN MX 10 pecan.rexroof.com.
mesquite IN A 199.19.224.244
mesquite IN TXT  "v=spf1 a a:mesquite.rexroof.com ~all"
_DMARC.mesquite   IN TXT "v=DMARC1; p=reject; rua=mailto:dmarc-reports@rexroof.com; adkim=r; aspf=s;"
@		IN	MX	10 mesquite.rexroof.com.
smokes   IN A 104.244.79.72
smokes   IN A 198.98.49.26
smokes   IN A 199.19.224.244

w      IN CNAME domains.tumblr.com.
www    IN CNAME fruits
url    IN A 104.244.72.217
url    IN A 198.98.53.42
url    IN A 205.185.125.63
space  IN A 104.244.72.217
space  IN A 198.98.53.42
space  IN A 205.185.125.63
home   IN CNAME rex001.duckdns.org.
; home	IN A 73.145.182.72 ;  dec 20 2018 - dexter rd
m-net	 IN A 64.9.205.95
newmnet	 IN A 69.39.89.95
_atproto IN TXT "did=did:plc:aqgnwyazaulj5cep4yp7v4cj"

jenkins     IN A    35.184.60.88

hambot      IN CNAME hambot.rexroof.com.herokudns.com.
