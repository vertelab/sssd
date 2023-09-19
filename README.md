# sssd onboarding
Onboarding clients using SSSD.<br>
Ubuntu 18.04 N/A <br>
Ubuntu 20.04 Tested and working fine! <br>
Ubuntu 22.04 Tested and working fine! <br>
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

Offboarding clients using SSSD.<br>
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
# Automount home directory

Mount home-directory using automount and sshfs.<br>
<br>
<br>
<br>
wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/onboard-home | bash
<br>
<br>


<br>
<br>
<br>
<br>
<br>

# When re-installing a server on your LAN, then nothing is working unless you...

<pre>
username@client:~$ ssh-keyscan -H stanley >> ~/.ssh/known_hosts
# stanley:22 SSH-2.0-OpenSSH_8.9p1 Ubuntu-3ubuntu0.3
# stanley:22 SSH-2.0-OpenSSH_8.9p1 Ubuntu-3ubuntu0.3
# stanley:22 SSH-2.0-OpenSSH_8.9p1 Ubuntu-3ubuntu0.3
# stanley:22 SSH-2.0-OpenSSH_8.9p1 Ubuntu-3ubuntu0.3
# stanley:22 SSH-2.0-OpenSSH_8.9p1 Ubuntu-3ubuntu0.3
username@client:~$ ssh stanley
</pre>
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
<pre>
getent passwd <userid>
sudo sssctl user-checks <userid>
</pre>
 <br>

# Ubuntu forums
<br>
https://askubuntu.com/
<br>
<br>
# Notes
<pre>
sudo cat /var/log/ipaclient-uninstall.log
sudo systemctl restart sssd.service
sudo systemctl status sssd.service
</pre>

