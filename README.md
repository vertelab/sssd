# sssd
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

# sssd

Offboarding clients using SSSD.
<br>
<br>
3. Log on to our <b>Fusion Directory server</b> and paste this line:<br>
<br>
wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/offboard-client-fd | bash -s [client-hostname]
<br>
<br>
4. Log on to <b>the second computer, the client,</b> to complete the install and paste this line:<br>
<br>
wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/offboard-client-local | bash
<br>
<br>
<br>

