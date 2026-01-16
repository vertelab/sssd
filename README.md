# Ubuntu + LDAP User Guides:

https://documentation.ubuntu.com/server/how-to/openldap/install-openldap/<br>
https://documentation.ubuntu.com/server/how-to/openldap/ldap-and-tls/

<br>

## clients using SSSD.
<br>
<br>

utv18
vertel.se
azzar.org
fd.vertel.se
tyrone.vertel.se
kind.vertel.se

<br>

## sssd onboarding script

**Since your username on the onboarding machine likely differs from your fd.vertel.se username, you must provide it to the script.<br>If it doesn't, you can ignore the -u flag.**
<br>
<br>

```
bash <(curl -sSL https://raw.githubusercontent.com/vertelab/ldap/refs/heads/main/onboard-client-sssd) [username on fd.vertel.se]
```

<br>

## sssd manual onboarding

<br>
Install sssd on the onbording machine
<br>
<br>

```
sudo apt update
sudo apt install sssd
```

<br>
Enable sssd
<br>
<br>

```
sudo systemctl enable sssd.service
```

<br>
Add the following to the file /etc/sssd/sssd.conf
<br>
<br>

```
[sssd]
config_file_version = 2
domains = fd.vertel.se
services = ssh

[ssh]
ssh_authorized_keys_cache_timeout = 60
ldap_user_ssh_public_key = sshPublicKey

[domain/fd.vertel.se]
#debug_level = 9
id_provider = ldap
auth_provider = ldap
chpass_provider = ldap
ldap_uri = ldaps://fd.vertel.se
cache_credentials = True
ldap_search_base = ou=vertel,dc=nodomain
ldap_access_filter = (uid=*)
ldap_tls_reqcert = allow
ldap_tls_cacert = /etc/ssl/certs/mycacert.pem
```

<br>
Make sure that sssd.conf has the right owner and permissions
<br>
<br>

```
sudo chown root:root /etc/sssd/sssd.conf
sudo chmod 0600 /etc/sssd/sssd.conf
```

<br>
Copy the certificate on the fd.vertel.se server (usr/local/share/ca-certificates/mycacert.crt)<br>to the same location on the onbording machine.

<br>
<br>

<br>
If you are lost, this is what the script does, but it's probably easier to just log on to the fd.vertel.se server.
<br>
<br>

```
ssh -t -q "$USERNAME"@fd.vertel.se "sudo cp /usr/local/share/ca-certificates/mycacert.crt ~/ && sudo chown $USER:$USER ~/mycacert.crt"
scp "$USERNAME"@fd.vertel.se:mycacert.crt ~/
sudo sudo chmod 440 ~/mycacert.crt && sudo chown root:root ~/mycacert.crt
sudo mv ~/mycacert.crt /usr/local/share/ca-certificates/
```

<br>
Just like the script after moving it to /usr/local/share/ca-certificates/mycacert.crt on the onbording machine<br>make sure the it has the right owner and permissions.
<br>
<br>

```
sudo sudo chmod 440 /usr/local/share/ca-certificates/mycacert.crt 
sudo chown root:root /usr/local/share/ca-certificates/mycacert.crt
```

<br>
Add the certificate to the onbording machine properly
<br>
<br>

```
sudo update-ca-certificates
```

<br>
Activate user directory creation on login.
<br>
<br>

```
sudo pam-auth-update --enable mkhomedir
```

<br>
Restart the sssd service
<br>
<br>

```
sudo systemctl restart sssd.service
```
