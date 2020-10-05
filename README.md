# Ubuntu 20.04 LAMP Scripts

Running this init-server.sh bash script on a newly deployed Ubuntu server does 3 things...

1. It updates the server.
2. It configures Uncomplicated Firewall.
3. It installs tree and unzip.
4. It removes dependencies no longer required.

&nbsp;

## How this script is used
The first thing we want to do is to get this script onto our server.  
The easiest way to do this is by using the *curl* command.  
This enables our server to *fetch* the script directly from GitHub.  
Once it is on our server, we can then run it. 

```
curl https://raw.githubusercontent.com/ilmutv/webserver-scripts/master/init-server.sh | sudo sh
```
