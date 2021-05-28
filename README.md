# Readme for this repo
## Note
 - You have to run the script "gen_initial_conf.sh" to generate new configuration for your OpenVPN instance, once you finish the script, you will have a few file in the directory ./data/conf, which will be mounted inside your openvpn container later as the configuration folder.
 - You have to push your public ip address of the same instance in which you deploy this openvpn container, as the #1 parameter to the script above. It will look like this: "gen_initial_conf.sh `your_public_ip`"
 - During the script above, you will be ask to enter passphrases for your pki, please you a complex one for your security standard.
