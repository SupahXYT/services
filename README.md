# Services 

This is a project aimed towards running services on unreliable infrastructure. 

## Why? 

Imagine having multiple unreliable servers, all on standby, with only one actually running the services you need at a time.
The idea is that the standby servers all periodically pull data from the running server, without actually running the services themselves. 
They do this so that when the running server shuts down, they have a copy ready to continue like nothing happened.
When the running server shuts down, a standby server takes over. 
At the moment, this is done by manually updating .env to change the running server to whatever server you choose.
Or, you can use DDNS to update the IP of the running server while keeping the hostname the same.

## Configuration



## Todo 

- [ ] 
- [ ] Specify different volume in .env 



```
