#Duo User Verification with Flask

## For use with fordparsons/duo-helpdesk docker image
https://hub.docker.com/r/fordparsons/duo-helpdesk/

## How to use
Setup a Duo [WebDSK](https://duo.com/docs/duoweb) application
Install docker on host system
Create the docker container (this example names it "helpdesk"):
```
docker run -d -p 5000:5000 --name <yourcontainername> fordparsons/duo-helpdesk
```
Edit duo.conf file to include ikey, skey, akey (string of 40 random characters) and API
Import your duo.conf file to the running container:
```
docker cp duo.conf <yourcontainername>:duo-helpdesk/duo.conf
Navigate your browser to ```http://localhost:5000/```
Click the Green Button and enter username to verify!

##duo.conf format

```
; Duo integration config

[duo]

ikey = <your ikey>
skey = <your skey>
akey = <your generated akey>
host = <your api-hostname>
```

The `ikey`, `skey`, and `host` values can be found in the [Duo Admin panel](https://admin.duosecurity.com). Please see the documentation for using the Python [WebSDK](https://duo.com/docs/duoweb) on how to generate a suitable string for the `akey` value.
