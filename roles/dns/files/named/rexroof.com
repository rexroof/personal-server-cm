$TTL 1800  ; ( 4 hours = 14400 )
rexroof.com.       IN      SOA     dns.rexroof.com.   rex.rexroof.com. (
	2025030401
        3600 ; refresh [1h]
        600  ; retry [10m]
        1209600 ; expire [14d]
        3600 ) ; min TTL [1h]
@		IN	NS	dns.rexroof.com.
@		IN	NS	dns2.rexroof.com.
@		IN	NS	dns3.rexroof.com.

@		IN	MX	10 pecan.rexroof.com.
@		IN	MX	10 mesquite.rexroof.com.
@		IN	MX	10 hickory.rexroof.com.

@        IN TXT  "v=spf1 mx a a:hickory.rexroof.com a:pecan.rexroof.com a:mesquite.rexroof.com include:google.com ~all"
_DMARC   IN TXT  "v=DMARC1; p=reject; rua=mailto:dmarc-reports@rexroof.com; ruf=mailto:dmarc-fails@rexroof.com"

@     IN A 104.244.79.72
@     IN A 198.98.49.26
@     IN A 199.19.224.244

dns  IN A 104.244.79.72
dns2 IN A 199.19.224.244
dns3 IN A 198.98.49.26


porco    IN A 104.244.72.217
puerco   IN A 198.98.53.42
porcine  IN A 205.185.125.63
pigs     IN A 104.244.72.217
pigs     IN A 198.98.53.42
pigs     IN A 205.185.125.63

hickory  IN A 104.244.79.72
pecan    IN A 198.98.49.26
mesquite IN A 199.19.224.244
smokes   IN A 104.244.79.72
smokes   IN A 198.98.49.26
smokes   IN A 199.19.224.244

w		IN CNAME domains.tumblr.com.
www   IN CNAME smokes
url   IN A 104.244.72.217
url   IN A 198.98.53.42
url   IN A 205.185.125.63
space   IN A 104.244.72.217
space   IN A 198.98.53.42
space   IN A 205.185.125.63
home    IN CNAME rex001.duckdns.org.
; home	IN A 73.145.182.72 ;  dec 20 2018 - dexter rd
m-net	IN A 64.9.205.95
newmnet	IN A 69.39.89.95
_atproto IN TXT "did=did:plc:aqgnwyazaulj5cep4yp7v4cj"

jenkins     IN A    35.184.60.88

hambot      IN CNAME hambot.rexroof.com.herokudns.com.
