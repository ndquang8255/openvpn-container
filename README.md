# Readme for this repo

## Note
 - You have to run the script "gen_initial_conf.sh" to generate new configuration for your OpenVPN instance, once you finish the script, you will have a few file in the directory ./data/conf, which will be mounted inside your openvpn container later as the configuration folder.
 - You have to push your public ip address of the same instance in which you deploy this openvpn container, as the #1 parameter to the script above. It will look like this: "gen_initial_conf.sh `your_public_ip`"
 - During the script above, you will be ask to enter passphrase for your pki, please you a complex one for your security standard. Please save this passphrase into a safe place, you will have to use it later when creating a new client.

## Command line tutorial

### To start using this OVPN container, please follow those step below
 - Clone this source code into your machine.
 - Change your command line into the folder in which you clone this source code.
 - Run the first command to generate configuration folder for OpenVPN.
 `gen_initial_conf.sh your_public_ip`
 - Export a value for variable CLIENT_NAME, create configuration and key for this client
 `export CLIENT_NAME=someone`
 - Create a client with no passphrase
 `docker-compose run --rm openvpn easyrsa build-client-full $CLIENT_NAME nopass`
 - Retrive client configuration file
 `docker-compose run --rm openvpn ovpn_getclient $CLIENTNAME > $CLIENT_NAME.ovpn`
 - After this step, you can use this file to connect to this OpenVPN instance.

### To revoke an existing client
- Remove all cert, issued key and everything belong to that client
`docker-compose run --rm openvpn ovpn_revokeclient $CLIENTNAME remove`
