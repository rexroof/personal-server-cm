#!/bin/sh
  # -A "Mozilla/5.0 (REX64; rv:50.0) Gecko/20100101 Lukas/41.0" \

curl \
  -H "User-Agent: Mozilla/5.0 (REX64; rv:50.0) Gecko/20100101 Lukas/41.0 golang" \
  -d 'name=rex' \
  -d 'pass={{ aadl_password }}' \
  -d 'form_id=user_login_form' \
  https://aadl.org/user/login > login.html
