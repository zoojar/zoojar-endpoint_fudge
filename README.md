# zoojar-endpoint_fudge
xinetd plain http endpoint that exposes the puppetmaster api (basic fudge for lack of session based auth)

Example use (default):
- Configures Xinetd as a plain http listener on a puppet master
- Executes a local https GET via bash; uses SSL auth to retrieve a json blob of classes from the /classifier-api/v1/classes endpoint
