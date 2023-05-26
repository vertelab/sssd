# sssd
Onboarding clients using SSSD. 
1. Log on to our Fusion Directory server and paste this line:

wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/onboard-client-fd | bash -s [client-hostname]


2. Log on to the second computer, the client, to complete the install and paste this line:

wget -O- https://raw.githubusercontent.com/vertelab/sssd/main/onboard-client-local | bash -s [client-hostname]

