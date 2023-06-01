# sssd
Onboarding clients using SSSD.
<br>
<br>
1. Log on to our <b>Fusion Directory server</b> and paste this line:<br>
<br>
wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/onboard-client-fd | bash -s [client-hostname]
<br>
<br>
2. Log on to the second computer, the client, to complete the install and paste this line:<br>
<br>
wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/onboard-client-local | bash
<br>
<br>
wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/onboard-threepart | bash
<br>
<br>


