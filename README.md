# sssd onboarding
Onboarding clients using SSSD.
<br>
<br>

1. Log on to our <b>Fusion Directory server</b> and paste this line:<br>
<br>
wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/onboard-client-fd | bash -s [client-hostname]
<br>
<br>
2. Log on to <b>the second computer, the client,</b> to complete the install and paste this line:<br>
<br>
wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/onboard-client-local | bash
<br>
<br>
<br>
<br>

# sssd offboarding

Offboarding clients using SSSD.
<br>
<br>
3. Log on to <b>the second computer, the client,</b> to complete the install and paste this line:<br>
<br>
wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/offboard-client-local | bash
<br>
<br>
<br>
4. Log on to our <b>Fusion Directory server</b> and paste this line:<br>
<br>
wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/offboard-client-fd | bash -s [client-hostname]
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
# Geek info
<br>
These scripts are based on a true story and the link below bring you the full story!
<br>
https://ubuntu.com/server/docs/service-ldap-with-tls
<br>
<br>
Another important link... <br>
https://ubuntu.com/server/docs/service-sssd-ldap
<br>
<br>
# Troubleshooting
<br>
https://ubuntu.com/server/docs/service-sssd-troubleshooting
<br>
getent passwd <userid>
<br>
sudo sssctl user-checks <userid>
<br>

# Ubuntu forums
<br>
https://askubuntu.com/

