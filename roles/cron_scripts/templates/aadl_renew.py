#!env python
import requests

# not needed
# from BeautifulSoup import BeautifulSoup as soup

acct = "https://www.aadl.org/user"
ua_rex = "Mozilla/5.0 (REX64; rv:50.0) Gecko/20100101 Lukas/41.0"
headers = {"User-Agent": ua_rex}

payload = {}
payload["name"] = "rex"
payload["pass"] = "{{ aadl_password }}"
payload["form_id"] = "user_login"

session = requests.session()

# not needed
# r = session.get(acct, headers=headers)
# payload['form_build_id'] = soup(r.content).find('input',
#         {'name': 'form_build_id', 'type': 'hidden' }).get('value')

# logs us in
r = session.post(acct, payload, headers=headers)

# renew all
r = session.post(acct, {"sub_type": "Renew All"}, headers=headers)

# renew all on subaccount 0
r = session.post("{}/subaccount/0".format(acct), {"sub_type": "Renew All"}, headers=headers)
